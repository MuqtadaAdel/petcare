import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF4E3), // خلفية بلون برتقالي فاتح
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // صورة من الإنترنت
                const CircleAvatar(
                  radius: 70,
                  backgroundImage: NetworkImage(
                    'https://t3.ftcdn.net/jpg/05/52/19/26/360_F_552192613_1gcoRi4z2sfyheakGj6S67wAgJ19zo6g.jpg', // رابط الصورة من الإنترنت
                  ),
                  backgroundColor: Colors.transparent,
                ),
                const SizedBox(height: 20),
                // عنوان التطبيق
                const Text(
                  'PetCare',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFF8C42), // برتقالي داكن
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'The Best Care for Your Pet',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.orange[600], // برتقالي متوسط
                  ),
                ),
                const SizedBox(height: 40),
                // حقل إدخال البريد الإلكتروني
                _buildTextField(
                  hintText: 'Email / Phone',
                  icon: Icons.email,
                ),
                const SizedBox(height: 20),
                // حقل إدخال كلمة المرور
                _buildTextField(
                  hintText: 'Password',
                  icon: Icons.lock,
                  obscureText: true,
                ),
                const SizedBox(height: 30),
                // زر تسجيل الدخول
                _buildButton(
                  context: context,
                  text: 'Login',
                  color: const Color(0xFFFF7043), // برتقالي متوسط
                  onPressed: () {
                    Navigator.of(context).pushNamed("/hotel_services");
                  },
                ),
                const SizedBox(height: 20),
                // زر إنشاء حساب جديد
                _buildButton(
                  context: context,
                  text: 'Create New Account',
                  color: const Color(0xFFFFAB91), // برتقالي فاتح
                  onPressed: () {
                    Navigator.of(context).pushNamed("/RegistrationPage");
                  },
                ),
                const SizedBox(height: 20),
                // زر نسيت كلمة المرور
                _buildButton(
                  context: context,
                  text: 'Forgot Password?',
                  color: const Color(0xFFFFAB99), // برتقالي باهت
                  onPressed: () {
                    Navigator.of(context).pushNamed("/ForgotPasswordPage");
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // دالة لإنشاء حقول الإدخال
  Widget _buildTextField({
    required String hintText,
    required IconData icon,
    bool obscureText = false,
  }) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Icon(icon, color: Colors.orange[600]), // أيقونة برتقالية
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  // دالة لإنشاء الأزرار
  Widget _buildButton({
    required BuildContext context,
    required String text,
    required Color color,
    required VoidCallback onPressed,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 50.0),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    );
  }
}
