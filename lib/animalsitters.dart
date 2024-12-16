import 'package:flutter/material.dart';

class AnimalSitterPage extends StatelessWidget {
  const AnimalSitterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Animal Sitters', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: const Color(0xFFFF8C42), // Vibrant orange color
        elevation: 8.0, // Subtle shadow for depth
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Motivational description with smooth and simple intro
            const Padding(
              padding: EdgeInsets.only(bottom: 16.0),
              child: Text(
                'Looking for a loving sitter for your pet? Choose the perfect match from the list below and feel confident that your pet will be in safe hands.',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                  height: 1.5, // Improved readability
                ),
                textAlign: TextAlign.center,
              ),
            ),
            // List of animal sitters with interactive and beautiful cards
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return _buildSitterTile(
                    context,
                    name: index.isEven ? 'Sara Ahmed' : 'Ali Hassan', // Dynamic sitter name
                    phone: '123456789',
                    location: index.isEven ? 'Baghdad' : 'Najaf', // Alternating locations
                    imageUrl: index.isEven
                        ? 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTas38VmttQHkQePvwteTstMV_Zq-n09KR3uA&s/150' // Female image
                        : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzegP-r-VB4mS_U3QCBDnFCVq8_j1MZmba219LGGQRm2E5w1GcAm-WS6ma698cm7xiUWw&usqp=CAU/150', // Male image
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  // A helper method to build a card for each sitter
  Widget _buildSitterTile(BuildContext context, {
    required String name,
    required String phone,
    required String location,
    required String imageUrl,
  }) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      elevation: 5.0,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        leading: CircleAvatar(
          radius: 30.0,
          backgroundImage: NetworkImage(imageUrl),
        ),
        title: Text(name, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        subtitle: Text('Phone: $phone', style: TextStyle(color: Colors.grey[600])),
        tileColor: Colors.orangeAccent.shade100,
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.location_on, color: Colors.deepOrangeAccent),
            const SizedBox(width: 4),
            Text(location),
          ],
        ),
        onTap: () {
          _showContactDialog(context, name, phone);
        },
      ),
    );
  }

  // Show a dialog when the user taps on a sitter
  void _showContactDialog(BuildContext context, String name, String phone) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Contact $name'),
        content: Text('Call $name at $phone for service details.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }
}
