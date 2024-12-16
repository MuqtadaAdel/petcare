import 'package:flutter/material.dart';

class AdoptionPage extends StatelessWidget {
  const AdoptionPage({super.key});

  // قائمة الحيوانات مع الصور المحلية
  List<Map<String, String>> get pets => [
    {'name': 'Bella', 'image': 'images/cat1.jpg', 'age': '2 years'},
    {'name': 'Max', 'image': 'images/cat2.jpg', 'age': '3 years'},
    {'name': 'Kitty', 'image': 'images/cat3.jpg', 'age': '1 year'},
    {'name': 'Simba', 'image': 'images/dog1.jpg', 'age': '1.5 years'},
    {'name': 'Charlie', 'image': 'images/dog2.jpg', 'age': '4 years'},
    {'name': 'Milo', 'image': 'images/dog3.jpg', 'age': '6 months'},
    {'name': 'Lola', 'image': 'images/rabbit1.jpg', 'age': '8 months'},
    {'name': 'Oscar', 'image': 'images/rabbit2.jpg', 'age': '2 years'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF3E0),
      appBar: AppBar(
        title: const Text(
          'Adoption',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.orange.shade100,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: pets.length,
        itemBuilder: (context, index) {
          final pet = pets[index];
          return GestureDetector(
            onTap: () {
              _showAdoptionDialog(context, pet);
            },
            child: Card(
              color: Colors.orange.shade50,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              elevation: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(16.0),
                      ),
                      child: Image.asset(
                        pet['image']!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          pet['name']!,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Age: ${pet['age']}',
                          style: const TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  // نافذة تأكيد التبني
  void _showAdoptionDialog(BuildContext context, Map<String, String> pet) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.orange.shade50,
          title: Text(
            'Adopt ${pet['name']}',
            style: const TextStyle(color: Colors.black),
          ),
          content: Text(
            'Do you want to adopt ${pet['name']}?',
            style: const TextStyle(color: Colors.black87),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Cancel',
                style: TextStyle(color: Colors.orange),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange, // زر بلون برتقالي
              ),
              onPressed: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('${pet['name']} adopted!'),
                  backgroundColor: Colors.orange,
                ));
              },
              child: const Text('Adopt'),
            ),
          ],
        );
      },
    );
  }
}
