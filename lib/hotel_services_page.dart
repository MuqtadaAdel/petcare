import 'package:flutter/material.dart';
import 'package:pet_hotel_app/veterinary_services_page.dart';

import 'HotelPage.dart';
import 'PetHotelPage.dart';
import 'PetProductsPage.dart';
import 'adoption_page.dart';
import 'animalsitters.dart';
import 'comunity.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pet Services',
      initialRoute: '/', // تعيين الصفحة الرئيسية
      routes: {
        '/': (context) => const ServicesPage(),
        '/adoption': (context) => const AdoptionPage(),
        '/PetHotelPage': (context) => PetHotelPage(),
        '/PetProductsPage': (context) => PetProductsPage(),
        '/veterinary_services': (context) => const VeterinaryPage(),
        '/community': (context) => CommunityPage(),
        '/animalsitter': (context) => AnimalSitterPage(),
        '/HotelPage': (context) => const HotelPage(),
      },
    );
  }
}

class ServicesPage extends StatefulWidget {
  const ServicesPage({super.key});

  @override
  _ServicesPageState createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    ServiceGrid(), // شبكة الخدمات (Services)
    PetsPage(),    // صفحة الحيوانات (Pets)
    SettingsPage() // صفحة الإعدادات (Settings)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        title: const Text(
          'Pet Services',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: const Color(0xFFFF8C42),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: _pages[_currentIndex], // عرض الصفحة بناءً على الفهرس الحالي
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, // الفهرس الحالي
        onTap: (index) {
          setState(() {
            _currentIndex = index; // تغيير الفهرس عند الضغط
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view),
            label: 'Services',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pets),
            label: 'Pets',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}

// شبكة الخدمات (صفحة Services)
class ServiceGrid extends StatelessWidget {
  const ServiceGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: [
          _buildServiceCard(
            context,
            icon: Icons.pets,
            color: const Color(0xFFFF8C42),
            title: 'Adoption',
            onTap: () {
              Navigator.of(context).pushNamed("/adoption");
            },
          ),
          _buildServiceCard(
            context,
            icon: Icons.folder_special_outlined,
            color: Colors.orangeAccent,
            title: 'Pet Services',
            onTap: () {
              Navigator.of(context).pushNamed("/PetHotelPage");
            },
          ),
          _buildServiceCard(
            context,
            icon: Icons.shopping_bag,
            color: Colors.orangeAccent,
            title: 'Pet Products',
            onTap: () {
              Navigator.of(context).pushNamed("/PetProductsPage");
            },
          ),
          _buildServiceCard(
            context,
            icon: Icons.medical_services,
            color: const Color(0xFFFF8C42),
            title: 'Veterinary',
            onTap: () {
              Navigator.of(context).pushNamed("/veterinary_services");
            },
          ),
          _buildServiceCard(
            context,
            icon: Icons.insert_comment_outlined,
            color: const Color(0xFFFF8C42),
            title: 'Community',
            onTap: () {
              Navigator.of(context).pushNamed("/community");
            },
          ),
          _buildServiceCard(
            context,
            icon: Icons.perm_contact_cal,
            color: const Color(0xFFFF8C42),
            title: 'Animal Sitter',
            onTap: () {
              Navigator.of(context).pushNamed("/animalsitter");
            },
          ),
          _buildServiceCard(
            context,
            icon: Icons.home_filled,
            color: const Color(0xFFFF8C42),
            title: 'Hotels',
            onTap: () {
              Navigator.of(context).pushNamed("/HotelPage");
            },
          ),
        ],
      ),
    );
  }

  // تصميم بطاقة الخدمة
  Widget _buildServiceCard(BuildContext context,
      {required IconData icon,
        required Color color,
        required String title,
        required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: color),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

// صفحة الحيوانات (Pets)
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

// صفحة الإعدادات (Settings)
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.language),
            title: const Text("Language"),
            onTap: () {
              // Language selection
            },
          ),
          ListTile(
            leading: const Icon(Icons.palette),
            title: const Text("Theme"),
            onTap: () {
              // Theme customization
            },
          ),
          ListTile(
            leading: const Icon(Icons.lock),
            title: const Text("Privacy Settings"),
            onTap: () {
              // Go to privacy settings page
            },
          ),
          ListTile(
            leading: const Icon(Icons.payment),
            title: const Text("Payment Settings"),
            onTap: () {
              // Go to payment settings page
            },
          ),
          ListTile(
            leading: const Icon(Icons.help),
            title: const Text("Help & Support"),
            onTap: () {
              // Go to help page
            },
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text("About"),
            onTap: () {
              // About page
            },
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text("Logout"),
            onTap: () {
              // Logout
            },
          ),
        ],
      ),
    );
  }
}
