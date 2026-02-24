import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:insta_food/pages/sign_in.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF8F6F6),

        fontFamily: 'Plus Jakarta Sans',
      ),
      home: const SignInPage(),
    );
  }
}
