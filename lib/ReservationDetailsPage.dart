import 'package:flutter/material.dart';

class ReservationDetailsPage extends StatefulWidget {
  const ReservationDetailsPage({super.key});

  @override
  _ReservationDetailsPageState createState() => _ReservationDetailsPageState();
}

class _ReservationDetailsPageState extends State<ReservationDetailsPage> {
  final _formKey = GlobalKey<FormState>();
  String? _name, _roomType, _date;
  int? _numOfGuests;

  // قائمة الغرف المتاحة
  List<String> availableRooms = ['Single', 'Double', 'Suite']; // على سبيل المثال
  List<String> allRooms = ['Single', 'Double', 'Suite', 'Penthouse']; // جميع الغرف، بما في ذلك الغرف غير المتاحة

  // دالة لعرض تأكيد الحجز
  void _showReservationConfirmation() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Reservation Confirmed'),
          content: const Text('Thank you! Your reservation has been successfully completed!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // إغلاق نافذة التأكيد
                _showSuccessMessage(); // عرض رسالة النجاح بعد إغلاق النافذة
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  // دالة لعرض رسالة نجاح الحجز
  void _showSuccessMessage() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Success'),
          content: const Text('Your reservation was successfully completed.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // إغلاق النافذة
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  // دالة لمعالجة عملية الحجز
  void _submitReservation() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      _showReservationConfirmation(); // عرض تأكيد الحجز
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reservation Details'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Hotel Name: Sunny Stay - Erbil',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Location: Erbil',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Phone Number: 07512345678',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Available Room Types: Single, Double, Suite',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 20),

            // استمارة الحجز
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Your Name'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                    onSaved: (value) => _name = value,
                  ),
                  const SizedBox(height: 10),

                  // Dropdown لعرض الغرف المتاحة فقط
                  DropdownButtonFormField<String>(
                    decoration: const InputDecoration(labelText: 'Room Type'),
                    value: _roomType,
                    onChanged: (value) {
                      setState(() {
                        _roomType = value;
                      });
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please select a room type';
                      }
                      return null;
                    },
                    items: availableRooms.map((room) {
                      return DropdownMenuItem(
                        value: room,
                        child: Text(room),
                      );
                    }).toList(),
                  ),

                  const SizedBox(height: 10),
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Number of Guests'),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the number of guests';
                      }
                      return null;
                    },
                    onSaved: (value) => _numOfGuests = int.tryParse(value!),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Reservation Date (YYYY-MM-DD)'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a reservation date';
                      }
                      return null;
                    },
                    onSaved: (value) => _date = value,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _submitReservation,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      textStyle: const TextStyle(fontSize: 16),
                    ),
                    child: const Text('Book Now'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
