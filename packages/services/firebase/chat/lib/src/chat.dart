import 'package:chat/chat.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:rxdart/rxdart.dart';

class Chat {
  /// [firebaseInitialized] will be posted with `true` when it is initialized.
  BehaviorSubject<bool> firebaseInitialized = BehaviorSubject<bool>.seeded(false);

  // Widget Function(String)? avatar;

  Function(String, ChatUserRoom)? messageCreateCallback;

  static Chat? _instance;
  static Chat get instance {
    if (_instance == null) {
      _instance = Chat();
    }
    return _instance!;
  }

  Future<void> init({
    Function(String, ChatUserRoom)? messageCreateCallback,
    // Widget Function(String)? avatar,
  }) async {
    // this.avatar = avatar;
    this.messageCreateCallback = messageCreateCallback;
    await initializeFirebase();
  }

  /// Firebase Initialization
  ///
  /// ! This must done after [init] because [init] sets the backend url,
  /// ! and probably the codes that run right after firebase initialization needs to connect to backend.
  Future<void> initializeFirebase() async {
    // if (enableFirebase == false) return;
    try {
      await Firebase.initializeApp();
      firebaseInitialized.add(true);
      // print("App is connected to Firebase!");
    } catch (e) {
      // print("Error: failed to connect to Firebase!");
    }
  }
}