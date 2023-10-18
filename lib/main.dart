import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.transparent, // Make the scaffold background transparent
        body: Stack( // Use a Stack to overlay the background image and content
          children: [
            // Background Image
            Image.asset(
              'images/bg.jpg', // Replace with your image path
              fit: BoxFit.cover, // You can adjust the fit as needed
              width: double.infinity,
              height: double.infinity,
            ),
            SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.transparent,
                    foregroundImage: AssetImage('images/profile.png'),
                  ),
                  Text(
                    'Aysegul Karadan',
                    style: TextStyle(
                      fontFamily: 'Permanent Marker',
                      fontSize: 36,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Web & Flutter Developer',
                    style: TextStyle(
                      fontFamily: 'Source Code Pro',
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 150,
                    child: Divider(
                      color: Colors.white,
                    ),
                  ),
                  Card(
                    color: Colors.white60,
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                    child: ListTile(
                      leading: Icon(
                        Icons.mail,
                        color: Colors.blueGrey[900],
                      ),
                      title:Text(
                        'hello@aysegulk.me',
                        style: TextStyle(
                          color: Colors.blueGrey[900],
                          fontFamily: "Source Code Pro",
                          fontWeight: FontWeight.bold,
                          fontSize: 20,

                        ),
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.white60,
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                    child: ListTile(
                      leading: Icon(
                        Icons.account_circle_rounded,
                        color: Colors.blueGrey[900],
                      ),
                      title:Text(
                        'aysegulk.me',
                        style: TextStyle(
                          color: Colors.blueGrey[900],
                          fontFamily: "Source Code Pro",
                          fontWeight: FontWeight.bold,
                          fontSize: 20,

                        ),
                      ),
                    ),
                  ),

                  // Add the rest of your content here
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}
