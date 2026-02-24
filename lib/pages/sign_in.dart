import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:insta_food/pages/home_page.dart';
import 'register.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(flex: 2),
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFEC4A14),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFEC4A14).withValues(alpha: 0.6),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Icon(Icons.restaurant, color: Colors.white),
              ),
    

              const Spacer(flex: 1),
             Text(
                  "Sign In",
                  style: TextStyle(
                    fontFamily: 'PlayfairDisplay',
                    fontWeight: FontWeight.w700,
                    fontSize: 48,
                  ),
                ),
            

              SizedBox(height: 5),

              Text(
                "Enter your details to continue your premium \ndining experience.",
                style: TextStyle(
                  fontFamily: 'Plus Jakarta Sans',
                  color: Color(0xFF6B7280),
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 20),

              Text(
                'EMAIL ADDRESS',
                style: TextStyle(
                  fontFamily: 'Plus Jakarta Sans',
                  color: Color(0xFF6B7280),
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),

              SizedBox(height: 5),

              TextField(
                decoration: InputDecoration(
                  hintText: 'name@example.com',
                  hintStyle: TextStyle(color: Color(0xFFD1DBD5)),
                  suffixIcon: Icon(Icons.mail_outlined),
                ),
              ),

              SizedBox(height: 20),

              Text(
                'PASSWORD',
                style: TextStyle(
                  fontFamily: 'Plus Jakarta Sans',
                  color: Color(0xFF6B7280),
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),

              SizedBox(height: 5),

              TextField(
                obscureText: _obscurePassword,
                decoration: InputDecoration(
                  hintText: "••••••••",
                  suffixIcon: Icon(
                    _obscurePassword
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                  ),
                ),
                onTap: () {
                  setState(() {
                    _obscurePassword = !_obscurePassword;
                  });
                },
              ),

              SizedBox(height: 20),

              Align(
                alignment: Alignment.topRight,
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontFamily: 'Plus Jakarta Sans',
                    color: Color(0xFF6B7280),
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),

              const SizedBox(height: 24),

              Container(
                width: 400,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFEC4A14).withValues(alpha: 0.6),
                      blurRadius: 6,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFEC4A14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    elevation: 3,
                  ),
                  onPressed: () {
                   Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                  child: Text(
                    "SIGN IN →",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              Row(
                children: [
                  Expanded(child: Divider()),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "OR CONNECT WITH",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Plus Jakarta Sans',
                        color: Color(0xFF6B7280),
                      ),
                    ),
                  ),
                  Expanded(child: Divider()),
                ],
              ),

              const SizedBox(height: 16),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade200,
                      border: Border.all(width: 0.5, color: Colors.black),
                    ),
                    alignment: Alignment.center,
                    child: SvgPicture.asset(
                      'assets/svg/google-icon.svg',
                      height: 20,
                      width: 30,
                    ),
                  ),

                  const SizedBox(width: 20),

                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade200,
                      border: Border.all(width: 0.5, color: Colors.black),
                    ),
                    alignment: Alignment.center,
                    child: SvgPicture.asset(
                      'assets/svg/apple-icon.svg',
                      height: 20,
                      width: 30,
                    ),
                  ),
                ],
              ),

            Spacer(flex: 1),

              Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Don’t have an account? "),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterPage(),
                          ),
                        );
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Color(0xFFEC4A14),
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}
