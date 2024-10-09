import 'package:flutter/material.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override //override a method from a superclass.
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea( //SafeArea widget is used to ensure that its child widgets are displayed within the "safe" boundaries of screen.
        child: Scaffold( //scaffold means the screen
          backgroundColor: Colors.white,
          body: Center(  // Centering all content
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Centers everything vertically
              children: [
                // to make the text "Grade Calculator" at the top
                const Padding(
                  padding: EdgeInsets.only(bottom: 150.0), // Space between the text and container
                  child: Text(
                    "Grade Calculator",
                    style: TextStyle(
                      fontSize: 24, 
                      fontWeight: FontWeight.bold,
                      color:  Color(0xFF7C7DED), // Purple color for the text
                    ),
                  ),
                ),

                //  second part Container with border and subjects list
                Container(
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey, // Border color
                      width: 2.0, // Border width
                    ),
                    borderRadius: BorderRadius.circular(10.0), // to do rounded corners
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // layout behavior to start of the cross axis.
                    children: const [
                      Text("Math:                      A   ", 
                        style: TextStyle(
                          fontSize: 18, //size
                          fontWeight: FontWeight.bold, // Bold text
                        ),
                      ),
                      Text("Physics:                 B      ", 
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold, 
                        ),
                      ),
                      Text("Chemistry:            C         ", 
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold, 
                        ),
                      ),
                      Text("-                            "),
                      Text("-                            "),
                      Text("-                            "),
                    ],
                  ),
                ),

                const SizedBox(height: 50), // Space between container and button
                
                // button part
                ElevatedButton( // is a button with a shadow effect that indicates it’s interactive.
                  onPressed: () { // The callback function that is executed when the button is tapped  null,bcs the button is disabled.
                    
                  },
                  child: const Text(
                    'Calculate',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 30), // padding inside the button
                    backgroundColor: Color(0xFF7C7DED), //  purple background
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
