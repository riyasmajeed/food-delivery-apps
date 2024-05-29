import 'package:flutter/material.dart';
import 'package:foodiee_app/view/homeslider.dart';
import 'package:foodiee_app/view/product.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

appBar: AppBar(

  title: Text('Yr.Food',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),

  centerTitle: true,
),

body: SingleChildScrollView(
  child: Padding(
    padding: const EdgeInsets.only(left: 15,top: 10,),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
      children: [
    
        Text('Every',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
    
         Text('food you need!',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
  SizedBox(height: 20,),
         HomeSlider(),
          SizedBox(height: 20,),

          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
            child: InkWell(
              onTap: () {
                  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProductDetails()),
            );
              },
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.black
              
                ),
              child: Center(
                child: Text('Sign in',style: TextStyle(
                  color: Colors.white,fontSize: 16,
                  fontWeight: FontWeight.bold
                ),),
              ),
              ),
            ),
          ),

           Container(
            child: 
Row(
  crossAxisAlignment: CrossAxisAlignment.center,
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text('Don\'have an account? ',style: TextStyle(
                    color: Colors.black,fontSize: 18,
                  
                    
                  ),),
                  Text('Sign up',style: TextStyle(
                    color: Colors.black,fontSize: 18,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline
                  ),),
  ],
),


           )   , 
           SizedBox(height: 10,)   
      ],
    ),
  ),
),
    );
  }
}