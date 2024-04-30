import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyD77Q6ZdwbFAsz00zGdpwszvPDTax2PEvQ",
            authDomain: "clinical-soft.firebaseapp.com",
            projectId: "clinical-soft",
            storageBucket: "clinical-soft.appspot.com",
            messagingSenderId: "217132505413",
            appId: "1:217132505413:web:193bf92cf7c81885c7062c"));
  } else {
    await Firebase.initializeApp();
  }
}
