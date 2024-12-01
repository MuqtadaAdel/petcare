import 'package:flutter/material.dart';

class PetHotelPage extends StatelessWidget {
  PetHotelPage({super.key});

  final List<Map<String, String>> roomOptions = [
    {
      'name': 'Standard Room',
      'image': 'assets/cat_icon.png',
      'price': '\$30/day'
    },
    {
      'name': 'Grooming Suite',
      'image': 'assets/cat_icon.png',
      'price': '\$50/day'
    },
    {
      'name': 'Walking Service',
      'image': 'assets/cat_icon.png',
      'price': '\$15/day'
    },
    {
      'name': 'Special Room',
      'image': 'assets/cat_icon.png',
      'price': '\$70/day'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Pet Hotel',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // صورة الغرفة الرئيسية
            Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: const DecorationImage(
                  image: AssetImage('assets/cat_icon.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            // قائمة الخيارات
            Expanded(
              child: ListView.builder(
                itemCount: roomOptions.length,
                itemBuilder: (context, index) {
                  final option = roomOptions[index];
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    elevation: 4,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          option['image']!,
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text(
                        option['name']!,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(option['price']!),
                      trailing: ElevatedButton(
                        onPressed: () {
                          // تنفيذ عملية الحجز
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: const Text('Book'),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
            // زر الحجز النهائي
            ElevatedButton(
              onPressed: () {
                // تنفيذ الحجز النهائي
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 100),
              ),
              child: const Text(
                'Book Now',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
