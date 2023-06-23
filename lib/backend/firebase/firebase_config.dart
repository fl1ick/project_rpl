import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDfzddZj6Q4GddRmX7Bakktvlio4DiGIGQ",
            authDomain: "app-phbs.firebaseapp.com",
            projectId: "app-phbs",
            storageBucket: "app-phbs.appspot.com",
            messagingSenderId: "1096317210068",
            appId: "1:1096317210068:web:09097821432f85eb7d1a41",
            measurementId: "G-J5385N8TJ1"));
  } else {
    await Firebase.initializeApp();
  }
}
