import 'package:flutter/material.dart';
import 'package:pet_hotel_app/ForgotPasswordPage.dart';
import 'package:pet_hotel_app/PetProductsPage.dart';
import 'package:pet_hotel_app/RegistrationPage.dart';
import 'login_page.dart';
import 'hotel_services_page.dart';
import 'adoption_page.dart';
import 'PetHotelPage.dart';
import 'veterinary_services_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pet Hotel App',
      initialRoute: 'hotel_services',
      routes: {
        '/': (context) => const LoginPage(),
        '/RegistrationPage': (context) => RegistrationPage(),
        '/ForgotPasswordPage':(context) => ForgotPasswordPage(),
        '/hotel_services': (context) => const ServicesPage(),
        '/adoption': (context) => const AdoptionPage(),
        '/PetHotelPage': (context) => PetHotelPage(),
        '/veterinary_services': (context) => VeterinaryServicesPage(),
        '/PetProductsPage': (context) => PetProductsPage(),
        

      },
    );
  }
}
