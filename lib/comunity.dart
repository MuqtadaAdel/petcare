import 'package:flutter/material.dart';

class CommunityPage extends StatelessWidget {
   const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Animal Adoption Community'),
        backgroundColor: Colors.orange,  // اللون البرتقالي
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            // المنشورات هنا
            Container(
              margin: const EdgeInsets.only(bottom: 16.0),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    // الصورة
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'images/cat1.jpg', // صورة محلية
                        fit: BoxFit.contain,
                        width: double.infinity,
                        height: 200,
                      ),
                    ),
                    // العنوان والتفاصيل
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Cute Brown Cat',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          const Text('Details: 6-month-old kitten'),
                          const SizedBox(height: 8),
                          const Row(
                            children: [
                              Icon(Icons.location_on, color: Colors.orangeAccent),
                              SizedBox(width: 8),
                              Text(
                                'Location: Baghdad, Iraq',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Row(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.thumb_up),
                                onPressed: () {
                                  // وضع الأكواد الخاصة بإعجاب المنشور
                                },
                              ),
                              

                              const SizedBox(width: 5),

                              IconButton(
                                icon: const Icon(Icons.comment),
                                onPressed: () {
                                  // وضع الأكواد الخاصة بالتعليق
                                },
                              ),
                              

                              const SizedBox(width: 16),

                              IconButton(
                                icon: const Icon(Icons.share),
                                onPressed: () {
                                  // وضع الأكواد الخاصة بالمشاركة
                                },
                              ),
                              

                              const SizedBox(width: 16),

                              IconButton(
                                icon: const Icon(Icons.save_alt),
                                onPressed: () {
                                  // وضع الأكواد الخاصة بحفظ المنشور
                                },
                              ),
                              
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 16.0),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    // الصورة
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'images/cat1.jpg', // صورة محلية
                        fit: BoxFit.contain,
                        width: double.infinity,
                        height: 200,
                      ),
                    ),
                    // العنوان والتفاصيل
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Cute Brown Cat',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          const Text('Details: 6-month-old kitten'),
                          const SizedBox(height: 8),
                          const Row(
                            children: [
                              Icon(Icons.location_on, color: Colors.orangeAccent),
                              SizedBox(width: 8),
                              Text(
                                'Location: Baghdad, Iraq',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Row(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.thumb_up),
                                onPressed: () {
                                  // وضع الأكواد الخاصة بإعجاب المنشور
                                },
                              ),

                              const SizedBox(width: 16),

                              IconButton(
                                icon: const Icon(Icons.comment),
                                onPressed: () {
                                  // وضع الأكواد الخاصة بالتعليق
                                },
                              ),

                              const SizedBox(width: 16),

                              IconButton(
                                icon: const Icon(Icons.share),
                                onPressed: () {
                                  // وضع الأكواد الخاصة بالمشاركة
                                },
                              ),

                              const SizedBox(width: 16),

                              IconButton(
                                icon: const Icon(Icons.save_alt),
                                onPressed: () {
                                  // وضع الأكواد الخاصة بحفظ المنشور
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 16.0),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    // الصورة
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'images/cat1.jpg', // صورة محلية
                        fit: BoxFit.contain,
                        width: double.infinity,
                        height: 200,
                      ),
                    ),
                    // العنوان والتفاصيل
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Cute Brown Cat',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          const Text('Details: 6-month-old kitten'),
                          const SizedBox(height: 8),
                          const Row(
                            children: [
                              Icon(Icons.location_on, color: Colors.orangeAccent),
                              SizedBox(width: 8),
                              Text(
                                'Location: Baghdad, Iraq',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Row(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.thumb_up),
                                onPressed: () {
                                  // وضع الأكواد الخاصة بإعجاب المنشور
                                },
                              ),

                              const SizedBox(width: 16),

                              IconButton(
                                icon: const Icon(Icons.comment),
                                onPressed: () {
                                  // وضع الأكواد الخاصة بالتعليق
                                },
                              ),

                              const SizedBox(width: 16),

                              IconButton(
                                icon: const Icon(Icons.share),
                                onPressed: () {
                                  // وضع الأكواد الخاصة بالمشاركة
                                },
                              ),

                              const SizedBox(width: 16),

                              IconButton(
                                icon: const Icon(Icons.save_alt),
                                onPressed: () {
                                  // وضع الأكواد الخاصة بحفظ المنشور
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 16.0),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    // الصورة
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'images/cat1.jpg', // صورة محلية
                        fit: BoxFit.contain,
                        width: double.infinity,
                        height: 200,
                      ),
                    ),
                    // العنوان والتفاصيل
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Cute Brown Cat',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          const Text('Details: 6-month-old kitten'),
                          const SizedBox(height: 8),
                          const Row(
                            children: [
                              Icon(Icons.location_on, color: Colors.orangeAccent),
                              SizedBox(width: 8),
                              Text(
                                'Location: Baghdad, Iraq',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Row(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.thumb_up),
                                onPressed: () {
                                  // وضع الأكواد الخاصة بإعجاب المنشور
                                },
                              ),

                              const SizedBox(width: 16),

                              IconButton(
                                icon: const Icon(Icons.comment),
                                onPressed: () {
                                  // وضع الأكواد الخاصة بالتعليق
                                },
                              ),

                              const SizedBox(width: 16),

                              IconButton(
                                icon: const Icon(Icons.share),
                                onPressed: () {
                                  // وضع الأكواد الخاصة بالمشاركة
                                },
                              ),

                              const SizedBox(width: 16),

                              IconButton(
                                icon: const Icon(Icons.save_alt),
                                onPressed: () {
                                  // وضع الأكواد الخاصة بحفظ المنشور
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 16.0),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    // الصورة
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'images/cat1.jpg', // صورة محلية
                        fit: BoxFit.contain,
                        width: double.infinity,
                        height: 200,
                      ),
                    ),
                    // العنوان والتفاصيل
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Cute Brown Cat',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          const Text('Details: 6-month-old kitten'),
                          const SizedBox(height: 8),
                          const Row(
                            children: [
                              Icon(Icons.location_on, color: Colors.orangeAccent),
                              SizedBox(width: 8),
                              Text(
                                'Location: Baghdad, Iraq',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Row(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.thumb_up),
                                onPressed: () {
                                  // وضع الأكواد الخاصة بإعجاب المنشور
                                },
                              ),

                              const SizedBox(width: 16),

                              IconButton(
                                icon: const Icon(Icons.comment),
                                onPressed: () {
                                  // وضع الأكواد الخاصة بالتعليق
                                },
                              ),
                              

                              const SizedBox(width: 16),

                              IconButton(
                                icon: const Icon(Icons.share),
                                onPressed: () {
                                  // وضع الأكواد الخاصة بالمشاركة
                                },
                              ),

                              const SizedBox(width: 16),

                              IconButton(
                                icon: const Icon(Icons.save_alt),
                                onPressed: () {
                                  // وضع الأكواد الخاصة بحفظ المنشور
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 16.0),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    // الصورة
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'images/cat1.jpg', // صورة محلية
                        fit: BoxFit.contain,
                        width: double.infinity,
                        height: 200,
                      ),
                    ),
                    // العنوان والتفاصيل
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Cute Brown Cat',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          const Text('Details: 6-month-old kitten'),
                          const SizedBox(height: 8),
                          const Row(
                            children: [
                              Icon(Icons.location_on, color: Colors.orangeAccent),
                              SizedBox(width: 8),
                              Text(
                                'Location: Baghdad, Iraq',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Row(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.thumb_up),
                                onPressed: () {
                                  // وضع الأكواد الخاصة بإعجاب المنشور
                                },
                              ),

                              const SizedBox(width: 16),

                              IconButton(
                                icon: const Icon(Icons.comment),
                                onPressed: () {
                                  // وضع الأكواد الخاصة بالتعليق
                                },
                              ),

                              const SizedBox(width: 16),

                              IconButton(
                                icon: const Icon(Icons.share),
                                onPressed: () {
                                  // وضع الأكواد الخاصة بالمشاركة
                                },
                              ),

                              const SizedBox(width: 16),

                              IconButton(
                                icon: const Icon(Icons.save_alt),
                                onPressed: () {
                                  // وضع الأكواد الخاصة بحفظ المنشور
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 16.0),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    // الصورة
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'images/cat1.jpg', // صورة محلية
                        fit: BoxFit.contain,
                        width: double.infinity,
                        height: 200,
                      ),
                    ),
                    // العنوان والتفاصيل
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Cute Brown Cat',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          const Text('Details: 6-month-old kitten'),
                          const SizedBox(height: 8),
                          const Row(
                            children: [
                              Icon(Icons.location_on, color: Colors.orangeAccent),
                              SizedBox(width: 8),
                              Text(
                                'Location: Baghdad, Iraq',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Row(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.thumb_up),
                                onPressed: () {
                                  // وضع الأكواد الخاصة بإعجاب المنشور
                                },
                              ),

                              const SizedBox(width: 16),

                              IconButton(
                                icon: const Icon(Icons.comment),
                                onPressed: () {
                                  // وضع الأكواد الخاصة بالتعليق
                                },
                              ),

                              const SizedBox(width: 16),

                              IconButton(
                                icon: const Icon(Icons.share),
                                onPressed: () {
                                  // وضع الأكواد الخاصة بالمشاركة
                                },
                              ),

                              const SizedBox(width: 16),

                              IconButton(
                                icon: const Icon(Icons.save_alt),
                                onPressed: () {
                                  // وضع الأكواد الخاصة بحفظ المنشور
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 16.0),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    // الصورة
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'images/cat1.jpg', // صورة محلية
                        fit: BoxFit.contain,
                        width: double.infinity,
                        height: 200,
                      ),
                    ),
                    // العنوان والتفاصيل
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Cute Brown Cat',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          const Text('Details: 6-month-old kitten'),
                          const SizedBox(height: 8),
                          const Row(
                            children: [
                              Icon(Icons.location_on, color: Colors.orangeAccent),
                              SizedBox(width: 8),
                              Text(
                                'Location: Baghdad, Iraq',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Row(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.thumb_up),
                                onPressed: () {
                                  // وضع الأكواد الخاصة بإعجاب المنشور
                                },
                              ),

                              const SizedBox(width: 16),

                              IconButton(
                                icon: const Icon(Icons.comment),
                                onPressed: () {
                                  // وضع الأكواد الخاصة بالتعليق
                                },
                              ),

                              const SizedBox(width: 16),

                              IconButton(
                                icon: const Icon(Icons.share),
                                onPressed: () {
                                  // وضع الأكواد الخاصة بالمشاركة
                                },
                              ),

                              const SizedBox(width: 16),

                              IconButton(
                                icon: const Icon(Icons.save_alt),
                                onPressed: () {
                                  // وضع الأكواد الخاصة بحفظ المنشور
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 16.0),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    // الصورة
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'images/cat1.jpg', // صورة محلية
                        fit: BoxFit.contain,
                        width: double.infinity,
                        height: 200,
                      ),
                    ),
                    // العنوان والتفاصيل
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Cute Brown Cat',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          const Text('Details: 6-month-old kitten'),
                          const SizedBox(height: 8),
                          const Row(
                            children: [
                              Icon(Icons.location_on, color: Colors.orangeAccent),
                              SizedBox(width: 8),
                              Text(
                                'Location: Baghdad, Iraq',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Row(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.thumb_up),
                                onPressed: () {
                                  // وضع الأكواد الخاصة بإعجاب المنشور
                                },
                              ),

                              const SizedBox(width: 16),

                              IconButton(
                                icon: const Icon(Icons.comment),
                                onPressed: () {
                                  // وضع الأكواد الخاصة بالتعليق
                                },
                              ),

                              const SizedBox(width: 16),

                              IconButton(
                                icon: const Icon(Icons.share),
                                onPressed: () {
                                  // وضع الأكواد الخاصة بالمشاركة
                                },
                              ),

                              const SizedBox(width: 16),

                              IconButton(
                                icon: const Icon(Icons.save_alt),
                                onPressed: () {
                                  // وضع الأكواد الخاصة بحفظ المنشور
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
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
