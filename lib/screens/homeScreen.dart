import 'package:flutter/material.dart';
// Add this import

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      double maxWidth = 400; // Reduced maxWidth

      return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(40.0), // Reduced padding
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/icon/LOGO - Mr. Jello.png',
                  height: 100,
                  width: 500,
                ),
                const SizedBox(height: 5),
                const Text(
                  'Home',
                  style: TextStyle(
                      fontSize: 30, // Reduced font size
                      fontWeight: FontWeight.bold),
                ),

                SizedBox(
                  height: 50,
                ),

                // View Posts
                SizedBox(
                  width: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 50,
                          width: maxWidth,
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context,
                                  '/posts'); // Navigate to PostListScreen
                            },
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: const Color(0xFF6249E9),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                            child: const Text('View Posts',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
