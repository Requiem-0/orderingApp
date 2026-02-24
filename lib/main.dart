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
      builder: (context, child) {
        return LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 600) {
              return Container(
                color: const Color(0xFFE5E7EB),
                child: Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 450),
                    child: child!,
                  ),
                ),
              );
            }
            return child!;
          },
        );
      },
      home: const SignInPage(),
    );
  }
}
