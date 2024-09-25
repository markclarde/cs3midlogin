import 'package:CS3MidLogin/screens/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'screens/loginScreen.dart';
import 'screens/signUpScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/login': (context) => const LoginScreen(),
        '/sign-up': (context) => const SignUpScreen(),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        double maxWidth = 300;
        // double containerWidth = constraints.maxWidth < maxWidth ? constraints.maxWidth : maxWidth;

        return Scaffold(
          backgroundColor: Colors.white, // Background color
          body: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Top image (replace with your asset image)
                  Image.asset(
                    'assets/icon/LOGO - Mr. Jello.png',
                    height: 200,
                    width: 500,
                  ),

                  const SizedBox(height: 5),

                  // Hello Text
                  const Text(
                    'Hello',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                  ),

                  // Welcome message
                  SizedBox(
                    width: maxWidth,
                    child: const Text(
                      'Welcome to MR.JELLO App, where you manage your daily tasks',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ),

                  const SizedBox(height: 40),

                  // Login Button
                  SizedBox(
                    width: maxWidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 50,
                            width: maxWidth,
                            child: TextButton(
                              onPressed: () {
                                // Navigate to the LoginScreen
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const LoginScreen(),
                                  ),
                                );
                              },
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: const Color(0xFF6249E9),
                                side: const BorderSide(color: Color(0xFF6249E9)),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              child: const Text(
                                'Login', 
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Sign Up Button
                  SizedBox(
                    width: maxWidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 50,
                            width: maxWidth,
                            child: TextButton(
                              onPressed: () {
                                // Navigate to the SignUpScreen
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SignUpScreen(),
                                  ),
                                );
                              },
                              style: TextButton.styleFrom(
                                foregroundColor: const Color(0xFF6249E9),
                                backgroundColor: Colors.white,
                                side: const BorderSide(color: Color(0xFF6249E9)),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              child: const Text(
                                'Sign Up', 
                                style: TextStyle(
                                  color: Color(0xFF6249E9),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 40),

                  // Sign up using text
                  const Text(
                    'Sign up using:',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),

                  const SizedBox(height: 5),

                  // Social buttons (replace icons with actual logos)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Facebook Button
                      Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF1877F2),
                        ),
                        child: IconButton(
                          icon: const FaIcon(
                            FontAwesomeIcons.facebook,
                            color: Colors.white,
                            size: 20,
                          ),
                          onPressed: () {
                            // Add your functionality here
                          },
                        ),
                      ),

                      const SizedBox(width: 10),

                      // Google Plus Button
                      Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFDB4437),
                        ),
                        child: IconButton(
                          icon: const FaIcon(
                            FontAwesomeIcons.googlePlus,
                            color: Colors.white,
                            size: 20,
                          ),
                          onPressed: () {
                            // Navigate to the LoginScreen
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomeScreen(),
                              ),
                            );
                          },
                        ),
                      ),

                      const SizedBox(width: 10),

                      // LinkedIn Button
                      Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF0077B5),
                        ),
                        child: IconButton(
                          icon: const FaIcon(
                            FontAwesomeIcons.linkedin,
                            color: Colors.white,
                            size: 20,
                          ),
                          onPressed: () {
                            // Add your functionality here
                          },
                        ),
                      ),
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