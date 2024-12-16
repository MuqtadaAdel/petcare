import 'package:flutter/material.dart';
import 'ProductDetailPage.dart';

class PetProductsPage extends StatelessWidget {
  final List<Map<String, dynamic>> categories = [
    {
      'category': 'Cat Food',
      'products': [
        {'name': 'Dry Cat Food', 'price': '\$15.00', 'image': 'images/dryfoood.jpg'},
        {'name': 'Wet Cat Food', 'price': '\$20.00', 'image': 'images/wetfood.jpg'},
        {'name': 'Turkey Flavored Cat Food', 'price': '\$18.00', 'image': 'images/turky.jpg'},
        {'name': 'Fish Flavored Cat Food', 'price': '\$17.00', 'image': 'images/fish.jpg'},
        {'name': 'Complete Cat Food', 'price': '\$22.00', 'image': 'images/best.jpg'},
        {'name': 'Food for Weak Cats', 'price': '\$19.00', 'image': 'images/wek.jpg'},
        {'name': 'Food for Senior Cats', 'price': '\$25.00', 'image': 'images/senior.jpg'},
        {'name': 'Organic Cat Food', 'price': '\$30.00', 'image': 'images/organic.jpg'},
        {'name': 'Delicious Cat Food', 'price': '\$12.00', 'image': 'images/deli.jpg'},
        {'name': 'Best Flavor Cat Food', 'price': '\$20.00', 'image': 'images/best.jpg'},
      ],
    },
    {
      'category': 'Dog Toys',
      'products': [
        {'name': 'Rubber Ball', 'price': '\$10.00', 'image': 'images/bone.jpg'},
        {'name': 'Chew Bone', 'price': '\$12.00', 'image': 'images/dogball.jpg'},
        {'name': 'Dog Swing', 'price': '\$15.00', 'image': 'images/swing.jpg'},
        {'name': 'Moving Dog Toy', 'price': '\$20.00', 'image': 'images/moving.jpg'},
        {'name': 'Tug Dog Toy', 'price': '\$18.00', 'image': 'images/tollar.jpg'},
        {'name': 'Collar Dog Toy', 'price': '\$14.00', 'image': 'images/swing.jpg'},
        {'name': 'Flying Dog Toy', 'price': '\$16.00', 'image': 'images/fly.jpg'},
        {'name': 'Sport Dog Toy', 'price': '\$22.00', 'image': 'images/sport.jpg'},
        {'name': 'Fun Dog Toy', 'price': '\$25.00', 'image': 'images/bone.jpg'},
        {'name': 'Soccer Ball Dog Toy', 'price': '\$11.00', 'image': 'images/tug.jpg'},
      ],
    },
    {
      'category': 'Bird Cages',
      'products': [
        {'name': 'Small Bird Cage', 'price': '\$30.00', 'image': 'images/cag1.jpg'},
        {'name': 'Large Bird Cage', 'price': '\$50.00', 'image': 'images/cag2.jpg'},
        {'name': 'Cage with Side Doors', 'price': '\$45.00', 'image': 'images/cag3.jpg'},
        {'name': 'Cage with Accessories', 'price': '\$60.00', 'image': 'images/cag4.jpg'},
        {'name': 'Rotating Bird Cage', 'price': '\$55.00', 'image': 'images/cag5.jpg'},
      ],
    },
    {
      'category': 'Cat Toys',
      'products': [
        {'name': 'Cat Ball', 'price': '\$8.00', 'image': 'images/catoy1.jpg'},
        {'name': 'Cat Swing', 'price': '\$18.00', 'image': 'images/catoy2.jpg'},
        {'name': 'Cat String', 'price': '\$5.00', 'image': 'images/catoy3.jpg'},
        {'name': 'Cat Fishing Toy', 'price': '\$12.00', 'image': 'images/catoy4.jpg'},
        {'name': 'Sound Cat Toy', 'price': '\$10.00', 'image': 'images/catoy5.jpg'},
      ],
    },
  ];

  final List<String> cart = [];

  PetProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pet Products'),
        backgroundColor: const Color(0xFFFFB74D), // Light orange color
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          var category = categories[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 5,
            child: ExpansionTile(
              title: Text(
                category['category'],
                style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFFFFB74D)),
              ),
              children: [
                ...category['products'].map<Widget>((product) {
                  return ListTile(
                    title: Text(
                      product['name'],
                      style: const TextStyle(fontSize: 18, color: Colors.black87),
                    ),
                    subtitle: Text(
                      'Price: ${product['price']}',
                      style: const TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(product['image'], width: 60, height: 60, fit: BoxFit.cover),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailPage(
                            cart: cart,
                            productName: product['name'],
                            productPrice: product['price'],
                            productImage: product['image'],
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ],
            ),
          );
        },
      ),
    );
  }
}
