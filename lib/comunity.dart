import 'package:flutter/material.dart';

class CommunityPage extends StatelessWidget {
   const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Animal Adoption Community'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
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
                        'images/cat1.jpg',
                        fit: BoxFit.contain,
                        width: double.infinity,
                        height: 200,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Cute Black Cat',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          const Text('Details: 6-month-old kitten "Want a roommate who doesn’t pay rent but steals your heart? Adopt a cat!"'),
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

                                },
                              ),
                              

                              const SizedBox(width: 5),

                              IconButton(
                                icon: const Icon(Icons.comment),
                                onPressed: () {

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
                        'images/dog1.jpg', // صورة محلية
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
                            'Nice boby',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          const Text('Details: 4-month-old dog'),
                          const SizedBox(height: 8),
                          const Row(
                            children: [
                              Icon(Icons.location_on, color: Colors.orangeAccent),
                              SizedBox(width: 8),
                              Text(
                                'Location: basrs, Iraq',
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
                        'images/rabbit1.jpg', // صورة محلية
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
                            'Cute gray bunny ',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          const Text('Details: 9-month-old =Adopt a bunny! Warning: May cause extreme cuteness overload'),
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
                        'images/cat2.jpg', // صورة محلية
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
                            'gorgeous white Cat',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          const Text('Details: 6-month-old =Adopt a cat. They’ll train you to open doors, serve food, and admire their awesomeness'),
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
                        'images/dog2.jpg', // صورة محلية
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
                            'Cute Brown dog',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          const Text('Details: 6-month-old =Save a pet, gain a shadow. Seriously, they’ll follow you everywhere!'),
                          const SizedBox(height: 8),
                          const Row(
                            children: [
                              Icon(Icons.location_on, color: Colors.orangeAccent),
                              SizedBox(width: 8),
                              Text(
                                'Location: arbil, Iraq',
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
                        'images/rabbit2.jpg', // صورة محلية
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
                            'lovly white bunny ',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          const Text('Details: 6-month-old = ! Warning: May cause extreme cuteness overload'),
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
                        'images/cat3.jpg', // صورة محلية
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
                            'nice Cat',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          const Text('Details: 6-month-old =you finally have someone to knock your stuff off the table… with love😹❤️'),
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
                        'images/dog3.jpg', // صورة محلية
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
                            'Cute boby',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          const Text('Details: 6-month-old '),
                          const SizedBox(height: 8),
                          const Row(
                            children: [
                              Icon(Icons.location_on, color: Colors.orangeAccent),
                              SizedBox(width: 8),
                              Text(
                                'Location: Basra, Iraq',
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
                        'images/cat3.jpg', // صورة محلية
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
                            'Cute Cat',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          const Text('Details: 6-month-old kitten =you finally have someone to knock your stuff off the table… with love😹❤️'),
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
