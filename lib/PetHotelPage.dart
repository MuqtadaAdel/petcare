import 'package:flutter/material.dart';

class PetHotelPage extends StatefulWidget {
  const PetHotelPage({super.key});

  @override
  _PetHotelPageState createState() => _PetHotelPageState();
}

class _PetHotelPageState extends State<PetHotelPage> {
  final List<Map<String, String>> serviceOptions = [
    {
      'name': 'Pet Sitting',
      'image': 'images/dogsitter.jpg',
      'price': '\$25/session',
      'description': 'Professional pet sitting services when you are away.'
    },
    {
      'name': 'Pet Walking',
      'image': 'images/walk.jpg',
      'price': '\$15/walk',
      'description': 'Take your pet for a refreshing walk every day.'
    },
    {
      'name': 'Training Session',
      'image': 'images/training.jpg',
      'price': '\$50/session',
      'description': 'Help your pet learn new tricks and commands.'
    },
    {
      'name': 'Veterinary Check-up',
      'image': 'images/vchup.jpg',
      'price': '\$40/visit',
      'description': 'Ensure your pet’s health with a full check-up.'
    },
  ];

  String confirmationMessage = ''; // To store the confirmation message

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBE1A1), // Light orange color
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        title: const Text(
          'Pet Services',
          style: TextStyle(
            color: Color(0xFF001D3F),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Color(0xFF001D3F)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: serviceOptions.length,
                itemBuilder: (context, index) {
                  final option = serviceOptions[index];
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
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF001D3F),
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(option['description']!),
                          Text(option['price']!,
                              style: const TextStyle(
                                  color: Color(0xFF04356A),
                                  fontWeight: FontWeight.w600)),
                        ],
                      ),
                      trailing: ElevatedButton(
                        onPressed: () {
                          // Controller for user input
                          TextEditingController emailController =
                          TextEditingController();
                          TextEditingController nameController =
                          TextEditingController();

                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text('Book ${option['name']}'),
                                content: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextField(
                                      controller: nameController,
                                      decoration: const InputDecoration(
                                          hintText: 'Enter your name'),
                                    ),
                                    TextField(
                                      controller: emailController,
                                      decoration: const InputDecoration(
                                          hintText: 'Enter your email'),
                                    ),
                                  ],
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text('Cancel'),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      final email = emailController.text;
                                      final name = nameController.text;
                                      if (email.isNotEmpty &&
                                          name.isNotEmpty) {
                                        // On Confirm, update the confirmation message
                                        setState(() {
                                          confirmationMessage =
                                          'Check your email for booking details!';
                                        });
                                      }
                                      Navigator.pop(context);
                                    },
                                    child: const Text('Confirm'),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFFF8C00), // Light orange color
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
            if (confirmationMessage.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  color: Colors.white, // White background for the confirmation message
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Text(
                    confirmationMessage,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF04356A),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
