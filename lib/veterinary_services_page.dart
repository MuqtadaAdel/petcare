import 'package:flutter/material.dart';

class VeterinaryPage extends StatelessWidget {
  const VeterinaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Veterinarians',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.orangeAccent, // Light orange color
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
        child: ListView(
          children: [
            _buildVeterinarianCard(
              context,
              'Dr. Doaa Suleiman',
              'Providing advice and treating animals',
              'Karbalaa',
              'images/cat1.jpg', // Replace with your image asset or use an icon
            ),
            _buildVeterinarianCard(
              context,
              'Dr. Majd Mohammed',
              'Providing advice and treating animals',
              'Nasriya',
              'images/cat1.jpg',
            ),
            _buildVeterinarianCard(
              context,
              'Dr. Jamil Hassan',
              'Providing advice and treating animals',
              'Arbil',
              'images/cat1.jpg',
            ),
            _buildVeterinarianCard(
              context,
              'Dr. Mariam Ahmed',
              'Providing advice and treating animals',
              'Najaf',
              'images/cat1.jpg',
            ),
            _buildVeterinarianCard(
              context,
              'Dr. Maria Ali',
              'Providing advice and treating animals',
              'Basra',
              'images/cat1.jpg',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVeterinarianCard(
      BuildContext context, String name, String subtitle, String location, String imagePath) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(12.0),
        leading: CircleAvatar(
          radius: 30, // Small image size
          backgroundImage: AssetImage(imagePath), // Load image from assets
          backgroundColor: Colors.transparent,
        ),
        title: Text(
          name,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.orangeAccent,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              subtitle,
              style: const TextStyle(fontSize: 14, color: Colors.black87),
            ),
            const SizedBox(height: 6),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    _showBookingDialog(context, name);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.orangeAccent,
                    padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    'Appointment',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Add action for visiting the doctor
                    _showVisitDialog(context, name);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    ' home servecess',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 6),
            TextButton(
              onPressed: () {
                // Open social media or website link
              },
              child: Text(
                location,
                style: const TextStyle(
                  color: Colors.blue,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Function to show the booking dialog
  void _showBookingDialog(BuildContext context, String doctorName) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Book with $doctorName'),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: InputDecoration(labelText: 'Your Name'),
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Phone Number'),
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Details'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();  // Close the booking dialog
                _showConfirmationDialog(context);  // Show the confirmation dialog
              },
              child: const Text('Submit'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();  // Close the booking dialog
              },
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  // Function to show the visit dialog
  void _showVisitDialog(BuildContext context, String doctorName) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Visit $doctorName'),
          content: const Text('Do you want a vet to visit you at home to treat your pet at your location?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();  // Close the visit dialog
                _showConfirmationDialog(context);  // Show the confirmation dialog
              },
              child: const Text('Yes'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();  // Close the visit dialog
              },
              child: const Text('No'),
            ),
          ],
        );
      },
    );
  }

  // Function to show the confirmation message after submission
  void _showConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Thank You'),
          content: const Text('We will contact you to confirm the appointment or visit.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();  // Close the confirmation dialog
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
