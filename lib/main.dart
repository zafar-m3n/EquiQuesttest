import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFF6F3E7),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo placeholder
              Image.asset(
                'assets/images/EquiQuestlogo.png',
                height: 125,
              ),
              SizedBox(height: 10),
              Text(
                'Login to your account',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Email',
                style: TextStyle(color: Colors.black),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 5),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            10), // Add this line for border radius
                        borderSide: BorderSide.none,
                      )),
                ),
              ),

              SizedBox(height: 20),
              Text(
                'Password',
                style: TextStyle(color: Colors.black),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 5),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            10), // Add this line for border radius
                        borderSide: BorderSide.none,
                      )),
                  obscureText: true,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: Builder(
                  builder: (BuildContext context) {
                    return TextButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Login button pressed!'),
                            duration: Duration(seconds: 2),
                          ),
                        );
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Color(0xFFC9EFC7),
                        ),
                      ),
                    );
                  },
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF454545),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'or continue with social account',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  // Continue with Google
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white, // Background color
                  onPrimary: Colors.black, // Text color
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/google-logo.png',
                      height: 24,
                    ), // Placeholder for Google logo
                    SizedBox(width: 10),
                    Text(
                      'Continue with Google',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),

              ElevatedButton(
                onPressed: () {
                  // Continue with Apple
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black, // Background color
                  onPrimary: Colors.white, // Text color
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/apple-logo.png',
                      height: 24,
                    ), // Placeholder for Apple logo
                    SizedBox(width: 8),
                    Text(
                      'Continue with Apple',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Builder(
                builder: (BuildContext context) {
                  return RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      children: <TextSpan>[
                        TextSpan(text: "Don't have an account? "),
                        TextSpan(
                          text: 'Register',
                          style: TextStyle(
                            color: Color(0xFF454545),
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // Code to execute when the "Register" text is clicked
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Register clicked!'),
                                  duration: Duration(seconds: 2),
                                ),
                              );
                            },
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
