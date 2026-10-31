import 'package:flutter/material.dart';

void main() {
  runApp(const ARGroupApp());
}

class ARGroupApp extends StatelessWidget {
  const ARGroupApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'A.R GROUP STUDY',
      theme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text('A.R GROUP STUDY'),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18),

          child: Column(
            children: [

              const SizedBox(height: 20),

              const Icon(
                Icons.school,
                size: 85,
                color: Colors.blue,
              ),

              const Text(
                'WELCOME TO A.R GROUP',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const Text(
                'Your Learning Partner',
                style: TextStyle(fontSize: 16),
              ),

              const SizedBox(height: 25),

              const Text(
                'Select Your Class',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              studyButton(context, '10th Standard'),
              studyButton(context, '11th Standard'),
              studyButton(context, '12th Standard'),

              const SizedBox(height: 20),

              const Text(
                'Competitive Exams',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              studyButton(context, 'NEET Preparation'),
              studyButton(context, 'JEE Preparation'),

              const SizedBox(height: 20),

              studyButton(context, 'Teaching Videos'),
              studyButton(context, 'Study Materials'),
              studyButton(context, 'Question Papers'),

              const SizedBox(height: 25),

              const Card(
                color: Color(0xFFE3F2FD),
                child: Padding(
                  padding: EdgeInsets.all(18),
                  child: Column(
                    children: [
                      Text(
                        'A.R GROUP PREMIUM',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text('2 Days Free Trial'),
                      Text('Monthly Plan: ₹10'),
                      Text('NEET / JEE: ₹50'),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                'Created by A.R GROUP',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget studyButton(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: SizedBox(
        width: double.infinity,
        height: 55,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailPage(title: title),
              ),
            );
          },
          child: Text(
            title,
            style: const TextStyle(fontSize: 17),
          ),
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final String title;

  const DetailPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Text(
          '$title Coming Soon!',
          style: const TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
