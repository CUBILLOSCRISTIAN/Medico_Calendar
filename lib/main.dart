// ignore_for_file: prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:medico_calendar/screens/introduction/spalsh_screen.dart';
import 'package:medico_calendar/provider/user_provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(options: FirebaseOptions(
      apiKey: "AIzaSyCVuEANZ0eVetmOXdDBxqeFmIQ-W-SiwjY",
      authDomain: "calendarapp-86d88.firebaseapp.com",
      databaseURL: "https://calendarapp-86d88-default-rtdb.firebaseio.com",
      projectId: "calendarapp-86d88",
      storageBucket: "calendarapp-86d88.appspot.com",
      messagingSenderId: "229643626573",
      appId: "1:229643626573:web:efa0c31f1c81eec5ec5404")
      );
  }else{
    await Firebase.initializeApp(); 
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<UserProvider>(
            create: ((context) => UserProvider()))
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Calendar App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
