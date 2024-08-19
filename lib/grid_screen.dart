import 'package:flutter/material.dart';

class GridScreen extends StatelessWidget {
  // Data for each cat (name, price, age, and image URL)
  final List<Map<String, String>> _catData = [
    {
      'name': 'Whiskers',
      'price': '\$200',
      'age': '2 years',
      'imageUrl': 'assets/images/whiskers.jpg'
    },
    {
      'name': 'Fluffy',
      'price': '\$150',
      'age': '1.5 years',
      'imageUrl': 'assets/images/fluffy.jpg'
    },
    {
      'name': 'Shadow',
      'price': '\$300',
      'age': '3 years',
      'imageUrl': 'assets/images/shadow.jpg'
    },
    {
      'name': 'Simba',
      'price': '\$250',
      'age': '1 year',
      'imageUrl': 'assets/images/simba.jpg'
    },
    {
      'name': 'Tiger',
      'price': '\$350',
      'age': '2.5 years',
      'imageUrl': 'assets/images/tiger.jpg'
    },
    {
      'name': 'Bella',
      'price': '\$180',
      'age': '1 year',
      'imageUrl': 'assets/images/bella.jpg'
    },
    {
      'name': 'Olivia',
      'price': '\$400',
      'age': '4 years',
      'imageUrl': 'assets/images/olivia.jpg'
    },
    {
      'name': 'Mittens',
      'price': '\$220',
      'age': '2 years',
      'imageUrl': 'assets/images/mittens.jpg'
    },
    {
      'name': 'Luna',
      'price': '\$170',
      'age': '1.5 years',
      'imageUrl': 'assets/images/luna.jpg'
    },
    {
      'name': 'Charlie',
      'price': '\$210',
      'age': '3 years',
      'imageUrl': 'assets/images/charlie.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cat Shop')),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 0.6,
        ),
        padding: EdgeInsets.all(10),
        itemCount: _catData.length,
        itemBuilder: (context, index) {
          final cat = _catData[index];
          return Card(
            elevation: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(8),
                    child: Image.asset(
                      cat['imageUrl']!,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        cat['name']!,
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Price: ${cat['price']}',
                        style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Age: ${cat['age']}',
                        style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
