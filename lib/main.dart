import 'package:flutter/material.dart';

void main() {
  runApp(const WaterTrackerApp());
}

// root of the app, stateless since nothing changes
class WaterTrackerApp extends StatelessWidget {
  const WaterTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Water Tracker',
      home: const WaterTrackerScreen(),
    );
  }
}

class WaterTrackerScreen extends StatelessWidget {
  const WaterTrackerScreen({super.key});

  // colors I picked from the image
  static const Color appBarBlue = Color(0xFF3F5FC8);
  static const Color bgColor = Color(0xFFEEF2F5);
  static const Color dropBlue = Color(0xFF3B9BFF);
  static const Color darkText = Color(0xFF1A1A2E);
  static const Color goalBlue = Color(0xFF2B3FB5);
  static const Color tipBg = Color(0xFFD9E8FF);
  static const Color tipText = Color(0xFF2237A8);

  // small reusable tip box so I don't repeat the same code twice
  Widget _tipBox(String text) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: tipBg,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: tipText,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: appBarBlue,
        centerTitle: true,
        title: const Text(
          'Water Tracker',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(Icons.more_horiz, color: Colors.white54),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Icon(Icons.water_drop, size: 90, color: dropBlue),
            const SizedBox(height: 12),
            const Text(
              'Stay Hydrated!',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: darkText,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              'Build a healthy daily habit',
              style: TextStyle(fontSize: 15, color: Colors.black54),
            ),
            const SizedBox(height: 16),

            // white goal card
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 18),
              margin: const EdgeInsets.symmetric(horizontal: 22),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Column(
                children: [
                  Text(
                    'Daily Water Goal',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF3A3A4A),
                    ),
                  ),
                  Text(
                    '8',
                    style: TextStyle(
                      fontSize: 84,
                      fontWeight: FontWeight.bold,
                      color: goalBlue,
                      height: 1.1,
                    ),
                  ),
                  Text(
                    'glasses per day',
                    style: TextStyle(fontSize: 15, color: Colors.black54),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),

            _tipBox('Drink water regularly'),
            const SizedBox(height: 8),
            _tipBox('Bring your water bottle'),
            const SizedBox(height: 12),

            const Text(
              'Every glass counts!',
              style: TextStyle(fontSize: 12, color: Colors.black87),
            ),
          ],
        ),
      ),
    );
  }
}
