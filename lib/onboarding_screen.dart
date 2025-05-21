import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart'; // Import for IconData

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Onboarding Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // You can customize the text theme further if using Google Fonts
        textTheme: Theme.of(context).textTheme.apply(
            // bodyColor: Colors.black,
            // displayColor: Colors.black,
            ),
        scaffoldBackgroundColor: Colors.grey[100], // Light grey background
      ),
      home: const OnboardingScreen(),
    );
  }
}

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          // Make the content scrollable
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Placeholder Image
                Center(
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 2.0),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const Icon(
                      Icons.image_outlined,
                      size: 50,
                      color: Colors.grey,
                    ), // Placeholder icon
                  ),
                ),
                const SizedBox(height: 40), // Spacing

                // Headline Text
                Text(
                  "Your holiday shopping delivered to your home 🏕️",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 28, // Adjust font size as needed
                      ),
                ),
                const SizedBox(height: 16), // Spacing

                // Subtext
                Text(
                  "There’s something for everyone to enjoy with Sweet Shop Favourites",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.grey[700],
                      ),
                ),
                const SizedBox(height: 40), // Spacing

                // Indicator Dots
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Filled dot for current progress
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor, // Primary color
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 8),
                    // Unfilled dots
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),

                // Use Spacer to push the button to the bottom
                const SizedBox(height: 80),

                // Get Started Button
                ElevatedButton(
                  onPressed: () {
                    // TODO: Implement navigation to the next screen
                    debugPrint("Get Started tapped!");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1A4BC2), // Deep blue color
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30), // Rounded corners
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Get Started",
                        style: Theme.of(context).textTheme.titleMedium!.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const SizedBox(width: 8),
                      const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ],
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