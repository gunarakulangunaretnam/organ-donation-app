import 'package:flutter/material.dart';
import 'create_account_screen.dart'; // Import the CreateAccountScreen

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context); // Navigates back to the previous screen
          },
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Logo and App Name
            Column(
              children: [
                const SizedBox(height: 60), // Add spacing at the top
                Image.asset(
                  'assets/images/primary_logo.png', // Replace with your logo image path
                  height: 250,
                  width: 250,
                ),
                const SizedBox(height: 20),
              ],
            ),
            // Login and Create Account Buttons
            Column(
              children: [
                // Login Button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: SizedBox(
                    width: 250, // Set fixed width for the button
                    child: OutlinedButton(
                      onPressed: () {
                        // Navigate to Login Screen
                      },
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        side: BorderSide(color: Colors.redAccent, width: 2),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                // Create Account Button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: SizedBox(
                    width: 250, // Set fixed width for the button
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigate to CreateAccountScreen
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CreateAccountScreen(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        backgroundColor: Colors.redAccent,
                      ),
                      child: const Text(
                        'Create Account',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // Bottom Wave Image
            Image.asset(
              'assets/images/bottom_wave.png', // Replace with your bottom wave image path
              fit: BoxFit.cover,
              width: double.infinity,
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
