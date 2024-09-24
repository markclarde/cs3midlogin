import 'package:act5/main.dart';
import 'package:act5/screens/loginScreen.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        double maxWidth = 600;
        double containerWidth = constraints.maxWidth < maxWidth ? constraints.maxWidth : maxWidth;

        return Scaffold(
          body: Container(
            color: Colors.white,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                      width: maxWidth,
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(15, 0, 10, 0),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Firstname", style: TextStyle(fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    SizedBox(
                      width: maxWidth,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: maxWidth,
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(15, 0, 10, 0),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Lastname", style: TextStyle(fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    ),
            
                    const SizedBox(height: 5),
                    SizedBox(
                      width: maxWidth,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: maxWidth,
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(15, 0, 10, 0),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Email Address", style: TextStyle(fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    ),
            
                    const SizedBox(height: 5),
                    SizedBox(
                      width: maxWidth,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    
                    SizedBox(
                      width: maxWidth,
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(15, 0, 10, 0),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Password", style: TextStyle(fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    ),
            
                    const SizedBox(height: 5),
                    SizedBox(
                      width: maxWidth,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: maxWidth,
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(15, 0, 10, 0),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Confirm Password", style: TextStyle(fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    ),
            
                    const SizedBox(height: 5),
                    SizedBox(
                      width: maxWidth,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
            
                    const SizedBox(height: 40),

                    SizedBox(
                      width: 350,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 65,
                              width: maxWidth,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  foregroundColor: Colors.white, // Button color
                                  backgroundColor: const Color(0xFF6249E9), // Text color
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30), // Rounded corners
                                  ),// Full-width button
                                ),
                                child: const Text('Sign Up', style: TextStyle(fontWeight: FontWeight.w500)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Already have an account?", style: TextStyle(fontSize: 12)),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                              ),
                            );
                          },
                          child: const Text("Log in", style: TextStyle(fontSize: 12)),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      }
    );
  }
}