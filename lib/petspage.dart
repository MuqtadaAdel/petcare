import 'package:flutter/material.dart';

class petspage extends StatelessWidget {
  const petspage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pet Services',
      home: PetsPage(),
    );
  }
}

class PetsPage extends StatefulWidget {
  const PetsPage({super.key});

  @override
  _PetsPageState createState() => _PetsPageState();
}

class _PetsPageState extends State<PetsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pets Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Our Pet Services:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'We offer a variety of services for your pets including grooming, training, and medical checkups.',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            const Text(
              'Available Pets:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              '1. Dog - Max, Labrador Retriever',
              style: TextStyle(fontSize: 18),
            ),
            const Text(
              '2. Cat - Bella, Persian',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // عند الضغط على الزر، تظهر نافذة منبثقة (Dialog) للتأكيد.
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Thank You'),
                      content: const Text('Your pet service request has been successfully submitted!'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop(); // إغلاق النافذة المنبثقة عند الضغط على OK
                          },
                          child: const Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text('Book a Service'),
            ),
          ],
        ),
      ),
    );
  }
}
