import 'package:flutter/material.dart';

class ProductCategory extends StatelessWidget {
  final String imageUrl;
  final String name;

  const ProductCategory({
    required this.imageUrl,
    required this.name,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Color.fromARGB(62, 0, 187, 212),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.network(
                imageUrl,
                // fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Text(
          name,
          style: TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
