import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_chat/firebase_chat.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class ChatBadge extends StatefulWidget {
  const ChatBadge({Key? key}) : super(key: key);

  @override
  State<ChatBadge> createState() => _ChatBadgeState();
}

class _ChatBadgeState extends State<ChatBadge> {
  late StreamSubscription<QuerySnapshot> chatRoomSubscription;
  late StreamSubscription ready;

  int newMessages = 0;

  @override
  void initState() {
    super.initState();

    /// ! when a user logout, and log into another account, it must re-subscribe with new path.
    ready = chat.ready.listen((re) {
      if (re == false) return;

      chatRoomSubscription = chat.roomsCol
          .where('newMessages', isGreaterThan: 0)
          .snapshots()
          .listen((QuerySnapshot snapshot) {
        newMessages = 0;
        snapshot.docs.forEach((doc) {
          ChatDataModel room = ChatDataModel.fromJson(doc.data() as Map);
          newMessages += room.newMessages;
          print('doc; new ${room.newMessages}');
        });
        setState(() {});
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    chatRoomSubscription.cancel();
    ready.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Badge(
      toAnimate: false,
      shape: BadgeShape.circle,
      badgeColor: Colors.red,
      elevation: 0,
      padding: EdgeInsets.all(3.0),
      badgeContent: Text('$newMessages', style: TextStyle(color: Colors.white, fontSize: 8)),
    );
  }
}