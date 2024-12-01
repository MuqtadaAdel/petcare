import 'package:flutter/material.dart';

class VeterinaryServicesPage extends StatelessWidget {
  VeterinaryServicesPage({super.key});
  final List<Map<String, String>> services = [
    {'name': 'Surgery', 'icon': 'assets/cat_icon.png'},
    {'name': 'Vaccination', 'icon': 'assets/cat_icon.png'},
    {'name': 'Consultation', 'icon': 'assets/cat_icon.png'},
    {'name': 'Nutrition', 'icon': 'assets/cat_icon.png'},
  ];

  final List<Map<String, String>> pets = [
    {'name': 'Bella', 'image': 'assets/cat_icon.png'},
    {'name': 'Max', 'image': 'assets/cat_icon.png'},
    {'name': 'Kitty', 'image': 'assets/cat_icon.png'},
    {'name': 'Simba', 'image': 'assets/cat_icon.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        title: const Text(
          'Veterinary Services',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // صورة الطبيب مع العنوان
            const Row(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/cat_icon.png'),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dr. John Doe',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Veterinary Specialist',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            // أزرار الحجز
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // تنفيذ حجز الموعد
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text('Book Appointment'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // عرض الاستشارات
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text('View Consultations'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // الخدمات المتاحة
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: services.length,
                itemBuilder: (context, index) {
                  final service = services[index];
                  return Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(service['icon']!),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        service['name']!,
                        style: const TextStyle(fontSize: 14),
                      ),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            // قائمة الحيوانات
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: pets.length,
                itemBuilder: (context, index) {
                  final pet = pets[index];
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    elevation: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(16)),
                            child: Image.asset(
                              pet['image']!,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            pet['name']!,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
