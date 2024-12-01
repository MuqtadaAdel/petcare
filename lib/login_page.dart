import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE8F5FE),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // صورة الكلب في الأعلى
                const CircleAvatar(
                  radius: 70,
                  backgroundImage:
                      AssetImage('assets/dog_image.png'), // أضف صورة الكلب هنا
                  backgroundColor: Colors.transparent,
                ),
                const SizedBox(height: 20),
                // عنوان التطبيق
                const Text(
                  'Pet Hotel',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4A6572),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Your Pet’s Second Home',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[600],
                  ),
                ),
                const SizedBox(height: 40),
                // حقل إدخال البريد الإلكتروني/رقم الهاتف
                _buildTextField(
                  hintText: 'Email / Phone',
                  icon: Icons.email,
                ),
                const SizedBox(height: 20),
                // زر إنشاء حساب جديد
                _buildButton(
                  context: context,
                  text: 'Create New Account',
                  color: const Color(0xFF6FA8DC),
                  onPressed: () {
                    Navigator.of(context).pushNamed("/RegistrationPage");
                  },
                ),
                const SizedBox(height: 20),
                // زر نسيت كلمة المرور
                _buildButton(
                  context: context,
                  text: 'Forgot Password?',
                  color: Colors.orangeAccent,
                  onPressed: () {
                    Navigator.of(context).pushNamed("/ForgotPasswordPage");
                  },
                ),
                const SizedBox(height: 20),
                // زر تسجيل الدخول
                _buildButton(
                  context: context,
                  text: 'Login',
                  color: Colors.greenAccent,
                  onPressed: () {
                    Navigator.of(context).pushNamed("/hotel_services");
                  },
                ),
                const SizedBox(height: 20),
                // الحيوانات الأليفة في الأسفل
                _buildPetIcons(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // دالة لإنشاء حقول الإدخال
  Widget _buildTextField({required String hintText, required IconData icon}) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Icon(icon, color: Colors.grey),
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
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 18, color: Colors.white),
      ),
    );
  }

  // دالة لإنشاء أيقونات الحيوانات
  Widget _buildPetIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildPetIcon('assets/cat_icon.png'), // أيقونة قطة
        const SizedBox(width: 20),
        _buildPetIcon('assets/dog_icon.png'), // أيقونة كلب
        const SizedBox(width: 20),
        _buildPetIcon('assets/rabbit_icon.avif'), // أيقونة أرنب
      ],
    );
  }

  // دالة لإنشاء أيقونة حيوان فردية
  Widget _buildPetIcon(String assetPath) {
    return Image.asset(
      assetPath,
      height: 50,
      width: 50,
    );
  }
}
