import 'package:act5/main.dart';
import 'package:act5/screens/signUpScreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        double maxWidth = 600;
        double containerWidth = constraints.maxWidth < maxWidth ? constraints.maxWidth : maxWidth;

        return Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAs_TDUTeHiZQ1tqLJlvItaBOjcmRTeoSbHw&s',
                    height: 200,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold
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
                          Text("Name", style: TextStyle(fontWeight: FontWeight.w500)),
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
                          Text("Email", style: TextStyle(fontWeight: FontWeight.w500)),
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

                  const SizedBox(height: 10),

                  SizedBox(
                    width: maxWidth,
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Forgot Password?", style: TextStyle(fontSize: 12),),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),

                  // Sign Up Button
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
                              child: const Text('Sign In', style: TextStyle(fontWeight: FontWeight.w500)),
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
                      const Text("Doesn't have an account?", style: TextStyle(fontSize: 12)),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                            builder: (context) => const SignUpScreen(),
                            ),
                          );
                        },
                        child: const Text("Sign up", style: TextStyle(fontSize: 12)),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}
