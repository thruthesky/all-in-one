import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_chat/firebase_chat.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:paginate_firestore/bloc/pagination_cubit.dart';
import 'package:paginate_firestore/paginate_firestore.dart';

class ChatRoom extends StatefulWidget {
  ChatRoom({
    required this.myUid,
    required this.otherUid,
    required this.onError,
    Key? key,
  }) : super(key: key);

  final Function onError;

  /// Firebase user uid
  final String myUid;
  final String otherUid;

  @override
  State<ChatRoom> createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  final input = TextEditingController();

  bool fetching = false;
  final int fetchNum = 20;
  bool noMore = false;

  List<ChatDataModel> messages = [];

  // final scrollController = ScrollController();

  late CollectionReference _messagesCol =
      FirebaseFirestore.instance.collection('chat/messages/$roomId');
  late CollectionReference _myRoomCol =
      FirebaseFirestore.instance.collection('chat/rooms/${widget.myUid}');
  late CollectionReference _otherRoomCol =
      FirebaseFirestore.instance.collection('chat/rooms/${widget.otherUid}');

  // /chat/rooms/[my-uid]/[other-uid]
  DocumentReference get _myRoomDoc => _myRoomCol.doc(widget.otherUid);

  /// /chat/rooms/[other-uid]/[my-uid]
  DocumentReference get _otherRoomDoc => _otherRoomCol.doc(widget.myUid);

  int page = 0;

  String get roomId => getMessageCollectionId(widget.myUid, widget.otherUid);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: PaginateFirestore(
              // Use SliverAppBar in header to make it sticky
              // header: const SliverToBoxAdapter(child: Text('HEADER')),
              footer: const SliverToBoxAdapter(child: SizedBox(height: 16)),

              itemsPerPage: 20,

              reverse: true,
              //item builder type is compulsory.
              itemBuilder: (index, context, documentSnapshot) {
                final data = documentSnapshot.data() as Map?;
                return ListTile(
                  leading: CircleAvatar(child: Icon(Icons.person)),
                  title: data == null ? Text('Error in data') : Text(data['text']),
                  subtitle: Text(documentSnapshot.id),
                );
              },
              // orderBy is compulsory to enable pagination
              query: _messagesCol.orderBy('timestamp', descending: true),
              //Change types accordingly
              itemBuilderType: PaginateBuilderType.listView,
              // To update db data in real time.
              isLive: true,

              /// initialLoader 가 제대로 잘 동작하지 않는 것 같다.
              // initialLoader: Row(
              //   children: [Icon(Icons.local_dining), Text('맨 처음에 한번만 표시되는 로더...')],
              // ),

              /// 이것도 제대로 동작하지 않는 것 같다.
              // bottomLoader: Row(
              //   children: [Icon(Icons.timer), Text('스크롤 해서 더 많이 로드 할 때 표시되는 로더!!!')],
              // ),

              onLoaded: (PaginationLoaded loaded) {
                // print('page loaded; reached to end?; ${loaded.hasReachedEnd}');
              },
              onReachedEnd: (PaginationLoaded loaded) {
                // This is called only one time when it reaches to the end.
                // print('Yes, Reached to end!!');
              },
              onPageChanged: (int no) {
                /// onPageChanged works on [PaginateBuilderType.pageView] only.
                // print('onPageChanged() => page no; $no');
              },
              emptyDisplay: Center(child: Text('No chats, yet. Please send some message.')),
              separator: Divider(color: Colors.blue),
            ),
          ),
          SafeArea(
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: input,
                    decoration: InputDecoration(hintText: 'Input message'),
                    onSubmitted: (x) => onSubmitText(),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: onSubmitText,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void onSubmitText() {
    final data = {
      'text': input.text,
      'timestamp': FieldValue.serverTimestamp(),
      'from': widget.myUid,
      'to': widget.otherUid,
    };
    _messagesCol.add(data).then((value) {
      setState(() {
        input.text = '';
      });
    });

    _myRoomDoc.set(data);
    _otherRoomDoc.set(data);
  }
}
