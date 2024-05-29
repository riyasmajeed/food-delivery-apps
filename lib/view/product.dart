import 'package:flutter/material.dart';
import 'package:foodiee_app/view/cardimage.dart';
import 'package:foodiee_app/view/foodlist.dart';
import 'package:foodiee_app/view/productcatagary.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 10, top: 30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Flexible(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: TextField(
                          cursorColor: Colors.grey,
                          decoration: InputDecoration(
                            fillColor: Color.fromARGB(51, 185, 183, 183),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(22),
                              borderSide: BorderSide.none,
                            ),
                            hintText: 'What can we get you?',
                            isDense: true,
                            contentPadding: EdgeInsets.all(13),
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 18),
                            suffixIcon: Padding(
                              padding: EdgeInsets.all(15),
                              child: Icon(Icons.search,
                                  size: 23, color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Icon(Icons.tune, size: 25),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        'All',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ProductCategory(
                            imageUrl:
                                'https://freepngimg.com/thumb/burger/22176-2-burger.png',
                            name: 'Burger',
                          ),
                          SizedBox(width: 10),
                          ProductCategory(
                            imageUrl:
                              'https://tse2.mm.bing.net/th?id=OIP.1gj6qiafv0QzHk1JPev_MgHaFN&pid=Api&P=0&h=220',
                            name: 'Pizza',
                          ),
                          SizedBox(width: 10),
                          ProductCategory(
                            imageUrl:
                             'https://tse2.mm.bing.net/th?id=OIP.1gj6qiafv0QzHk1JPev_MgHaFN&pid=Api&P=0&h=220',
                            name: 'Sandwich',
                          ),
                          SizedBox(width: 10),
                          ProductCategory(
                            imageUrl:
                              'https://tse4.mm.bing.net/th?id=OIP.R_EO1gWX6tW_jPmZXU-T9AHaHa&pid=Api&P=0&w=300&h=300',
                            name: 'Donut',
                          ),
                          SizedBox(width: 10),
                          ProductCategory(
                            imageUrl:
                              'https://tse4.mm.bing.net/th?id=OIP.R_EO1gWX6tW_jPmZXU-T9AHaHa&pid=Api&P=0&w=300&h=300',
                            name: 'Donut',
                          ),
                            SizedBox(width: 10),
                          ProductCategory(
                            imageUrl:
                              'https://tse4.mm.bing.net/th?id=OIP.R_EO1gWX6tW_jPmZXU-T9AHaHa&pid=Api&P=0&w=300&h=300',
                            name: 'Donut',
                          ),
                            SizedBox(width: 10),
                          ProductCategory(
                            imageUrl:
                              'https://tse4.mm.bing.net/th?id=OIP.R_EO1gWX6tW_jPmZXU-T9AHaHa&pid=Api&P=0&w=300&h=300',
                            name: 'Donut',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
          SizedBox(height: 20,),
          
          Text('For You',style: TextStyle(
            color: Colors.black,fontSize: 22,
            fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 20,),
          cardimage(),
          SizedBox(height: 20,),
          Text('Popular now',style: TextStyle(
            color: Colors.black,fontSize: 22,
            fontWeight: FontWeight.bold
          ),),
          
          FoodListedView(),
            ],
          ),
        ),
      ),
    );
  }
}
