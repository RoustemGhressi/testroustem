import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  // Add form fields and logic for username and password (if applicable)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Intro'), // Add an app bar for a more polished look
      ),
      body: Center(
        child: SingleChildScrollView( // Allow content to scroll if needed
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Center content vertically
            children: [
              Text(
                "ATLAS MONDE",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 100.0,
                  color: Colors.yellow,
                ),
              ),
              // Replace with your login image asset path (adjust size as needed)
              Image(
  image: AssetImage('assets/img/monde.png'), // Or 'assets/images/image.png'
),
              const SizedBox(height: 20.0), // Add spacing between elements
              
                ElevatedButton(
                  onPressed: () {
                  // Add login logic, validation, and navigation
                  Navigator.pushNamed(context, "/home");
                },
                child:const Text(
                "Enter",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  color: Colors.blue,
                ),
              ),
              ),
              const SizedBox(height: 40.0), // Add more spacing after the greeting

            
            ],
          ),
        ),
      ),
    );
  }
}
