import 'package:flutter/material.dart';
import 'ForgotPasswordPage.dart';
import 'HotelPage.dart';
import 'PetProductsPage.dart';
import 'RegistrationPage.dart';
import 'animalsitters.dart';
import 'comunity.dart';
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
        '/hotel_services': (context) =>  const ServicesPage(),
        '/adoption': (context) => const AdoptionPage(),
        '/PetHotelPage': (context) => const PetHotelPage(),
        '/veterinary_services': (context) => const VeterinaryPage(),
        '/PetProductsPage': (context) => PetProductsPage(),
        '/community': (context) => const CommunityPage(),
        '/animalsitter': (context) => const AnimalSitterPage(),
        '/HotelPage': (context) => const HotelPage(),
        '/petspage': (context) => const PetsPage(),



      },
    );
  }
}
