import 'package:flutter/material.dart';

class FoodListedView extends StatefulWidget {
  const FoodListedView({super.key});

  @override
  State<FoodListedView> createState() => _FoodListedViewState();
}

class _FoodListedViewState extends State<FoodListedView> {
  final List<String> imageUrls = [
    'https://tse1.mm.bing.net/th?id=OIP.HRXIftYSQYPXGQhqJmx2wgHaE7&pid=Api&P=0&h=220',
    'https://tse3.mm.bing.net/th?id=OIP.RZ9bnziuegU__tCdic0HhgHaE8&pid=Api&P=0&w=300&h=300',
    'https://tse3.mm.bing.net/th?id=OIP.RZ9bnziuegU__tCdic0HhgHaE8&pid=Api&P=0&w=300&h=300',
    'https://tse3.mm.bing.net/th?id=OIP.RZ9bnziuegU__tCdic0HhgHaE8&pid=Api&P=0&w=300&h=300',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          childAspectRatio: 300 / 330, // Aspect ratio calculation fix
        ),
        itemCount: imageUrls.length, // Fixing itemCount
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Handle tap
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Color.fromARGB(61, 0, 0, 0))
              ),
              child: Stack(
                children: [

                  Positioned(
                    top: 10,
                    left: 40,
                    child: Container(
                    height: 100,
                    width: 100,
                   decoration: BoxDecoration(
                    image: DecorationImage(  image: NetworkImage(imageUrls[index]
                    ),
                     fit: BoxFit.cover,)
                   ),
                  )),

                  Positioned(
                    left: 10,
                    bottom: 10,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
Text('Ramen',style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),

Text('Fresh Tomoto',style: TextStyle(
  fontSize: 15,color: Colors.grey
),),
SizedBox(height: 5,),
Row(
      children: [

        Icon(Icons.star,color: Colors.yellow,size: 13,),
        Text('5 \| 12,0km',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)
      ],
    ),

                    ],
                  )),
 Positioned(
                          
                          bottom: 10,
                          right: 10,
                          child: Container(

                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.black12)
                              ),
                              child: Center(
                                child: Icon(Icons.add ,size:10 ,),
                              ),
                            )),
                            Positioned(
                          bottom: 55,
                          right: 10,
                          child: Row(

 
                          children: [
                            Text('\$14.00',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold,color: Colors.black),),

                            
                          ],
                         )),

                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
