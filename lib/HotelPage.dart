import 'package:flutter/material.dart';
import 'ReservationDetailsPage.dart';
import 'RegistrationPage.dart'; // تأكد من استيراد صفحة تفاصيل الحجز

class HotelPage extends StatelessWidget {
  const HotelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Animal Hotels',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        backgroundColor: Colors.orange, // تغيير اللون إلى البرتقالي
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 0.7,
          children: [
            _buildHotelCard(
              context, // تمرير السياق هنا
              imageUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDNMkhTXMHsX20vHyYilHWg95qSdL-JlvF9g&s',
              title: 'Paws Paradise - Baghdad',
              details: '07812345678',
              location: 'Baghdad',
            ),
            _buildHotelCard(
              context,
              imageUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfTaI_-uImPvNEzkpA-G48KwhxELfxjDKOAA&s',
              title: 'Ocean Breeze - Basra',
              details: '07798765432',
              location: 'Basra',
            ),
            _buildHotelCard(
              context,
              imageUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEisZl6idPQXZ1qzu2IIRz5iinLGwekG8HAAtDVeZ5YvEPzxXO2-XdM4qz63NeBrD893g&usqp=CAU',
              title: 'Sunny Stay - Erbil',
              details: '07512345678',
              location: 'Erbil',
            ),
            _buildHotelCard(
              context,
              imageUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6c62-2MCMU1WtKvE7WWpS9YLRKlGbVtaaiA&s',
              title: 'Palm View - Mosul',
              details: '07712345678',
              location: 'Mosul',
            ),
            _buildHotelCard(
              context,
              imageUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvn3lt_jCREG5HkRDUncUX1fdA_uF-eKReXw&s',
              title: 'River Side - Najaf',
              details: '07876543210',
              location: 'Najaf',
            ),
            _buildHotelCard(
              context,
              imageUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSecT_NdPV3ouGgsB6QDH6tgfHmRFhSsrlI5vB3PuN43I--bn3-zl2oj3iOi33bXVS5Zmo&usqp=CAU',
              title: 'Rest Haven - Karbala',
              details: '07834567890',
              location: 'Karbala',
            ),
          ],
        ),
      ),
    );
  }

  // إنشاء بطاقة فندق مع زر للتنقل إلى تفاصيل الحجز
  Widget _buildHotelCard(
      BuildContext context, {
        required String imageUrl,
        required String title,
        required String details,
        required String location,
      }) {
    return GestureDetector(
      onTap: () {
        // عند النقر على الفندق، التنقل إلى صفحة تفاصيل الحجز
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ReservationDetailsPage()),
        );
      },
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 4,
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      children: [
                        const Icon(Icons.phone, size: 16, color: Colors.teal),
                        const SizedBox(width: 4),
                        Text(
                          details,
                          style: const TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.location_on, size: 16, color: Colors.teal),
                        const SizedBox(width: 4),
                        Text(
                          location,
                          style: const TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
