import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:foodiee_app/view/singleproduct.dart';

class cardimage extends StatefulWidget {
  const cardimage({super.key});

  @override
  State<cardimage> createState() => _cardimageState();
}

class _cardimageState extends State<cardimage> {
    final List<String> imageUrls = [
      'https://freepngimg.com/thumb/burger/22176-2-burger.png',
         'https://freepngimg.com/thumb/burger/22176-2-burger.png',
            'https://freepngimg.com/thumb/burger/22176-2-burger.png',
               'https://freepngimg.com/thumb/burger/22176-2-burger.png',
  ];
  
  @override
  Widget build(BuildContext context) {
    
    return  
  SizedBox(
              height: 240,
              width: MediaQuery.of(context).size.width,
              child: PageView.builder(
                  itemCount: imageUrls.length,
                padEnds: false,
                pageSnapping: false,
                physics: BouncingScrollPhysics(),
                reverse: true,
                controller:
                    PageController(initialPage: 2, viewportFraction: 0.7),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(7),
                    child: InkWell(
                      onTap: () {
                      
                     showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                     return  singileproduct();
                    //
                    // Container(
                    //   padding: EdgeInsets.all(20),
                    //   height: 200,
                    //   child: Column(
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     children: [
                    //       Text(
                    //         'Item Details',
                    //         style: TextStyle(
                    //           fontSize: 20,
                    //           fontWeight: FontWeight.bold,
                    //         ),
                    //       ),
                    //       SizedBox(height: 10),
                    //       Text(
                    //         'Details about the selected item will be displayed here.',
                    //         style: TextStyle(fontSize: 16),
                    //       ),
                    //     ],
                    //   ),
                    // );
                  },
                );

                      },
                      child: Container(
                       
                        width: 230,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                                boxShadow: [new BoxShadow(
                                  color: Color.fromARGB(54, 0, 0, 0),
                                  blurRadius: 5.0,
                                ),],
                            borderRadius: BorderRadius.circular(20)),
                      child: Stack(
                      
                        children: [
                      
                          Positioned(
                            left: 50,
                            top: 5,
                            child: Text('Extra Beef Burger',style: TextStyle(
                            fontSize: 17,color: Colors.black,fontWeight: FontWeight.bold
                          ),)),
                            Positioned(
                            left: 58,
                            top: 25,
                            child: Text('Chessy Mozarella',style: TextStyle(
                            fontSize: 14,color: Color.fromARGB(221, 97, 95, 95),fontWeight: FontWeight.bold
                          ),)),
                      
                      
                      Positioned(
                        left: 10,
                        top: 60,
                        child: Container(
                      height: 125,
                      width: 165,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        // image: DecorationImage(image: NetworkImage(
                        //    imageUrls[index],
                                         
                        // ))
                      ),
                       child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10.0),
                                        child: Image.network(
                      imageUrls[index],
                      fit: BoxFit.cover,
                                        ),
                                      ),
                      )),
                      
                      
                      Positioned(
                       right: 10,
                        top: 50,
                      
                        child: Column(
                          
                        children: [
                      
                          Row(
                            children: [
                      
                              Icon(Icons.star,color: Colors.yellow,size: 13,),
                              Text('5',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)
                            ],
                          ),
                          Text('Rate',style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold,
                         
                          ),
                          
                          ),
                      SizedBox(height: 5,),
                          DottedLine(
                            dashColor: Colors.black,
                            dashLength: 4,
                            lineThickness: 1,
                            dashGapLength: 4,
                          lineLength: 40,// Adjust as needed
                          alignment: WrapAlignment.end,
                          ),
                      SizedBox(height: 5,),
                          Icon(Icons.alarm,size: 20,),
                           Text('30 Min',style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold,)),
                           SizedBox(height: 5,),
                            DottedLine(
                            dashColor: Colors.black,
                            dashLength: 4,
                            lineThickness: 1,
                            dashGapLength: 4,
                          lineLength: 40,// Adjust as needed
                          alignment: WrapAlignment.end,
                          ),
                          SizedBox(height: 5,),
                          Icon(Icons.bike_scooter,size: 20,),
                           Text('GEL 3.90',style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold,)),
                      
                      
                          
                        ],
                      )
                      ),
                       Positioned(
                            bottom: 15,
                            left: 10,
                            child: Row(
                      
                       
                            children: [
                              Text('\$5.90',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                      
                              
                            ],
                           )),
                      
                           Positioned(
                            
                            bottom: 15,
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
                              ))
                      
                        ],
                      )
                      ),
                    ),
                  );
                },
              ),
            );

    
  }
}