import 'package:flutter/material.dart';

class ServicesPage extends StatefulWidget {
  const ServicesPage({super.key});

  @override
  _ServicesPageState createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  int _currentIndex = 0;

  // قائمة الصفحات المرتبطة بـ BottomNavigationBar
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
        backgroundColor: Colors.white,
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
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}

// شبكة الخدمات (صفحة Services)
class ServiceGrid extends StatelessWidget {
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
            color: Colors.blue,
            title: 'Adoption',
            onTap: () {
              Navigator.of(context).pushNamed("/adoption");
            },
          ),
          _buildServiceCard(
            context,
            icon: Icons.local_hotel,
            color: Colors.pink,
            title: 'Pet Hotel',
            onTap: () {
              Navigator.of(context).pushNamed("/PetHotelPage");
            },
          ),
          _buildServiceCard(
            context,
            icon: Icons.shopping_bag,
            color: Colors.green,
            title: 'Pet Products',
            onTap: () {
              Navigator.of(context).pushNamed("/PetProductsPage");
            },
          ),
          _buildServiceCard(
            context,
            icon: Icons.medical_services,
            color: Colors.orange,
            title: 'Veterinary',
            onTap: () {
              Navigator.of(context).pushNamed("/veterinary_services");
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
class PetsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Pets Page',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}

// صفحة الإعدادات (Settings)
class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Settings Page',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}