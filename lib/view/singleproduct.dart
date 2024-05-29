import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class singileproduct extends StatefulWidget {
  const singileproduct({super.key});

  @override
  State<singileproduct> createState() => _singileproductState();
}

class _singileproductState extends State<singileproduct> {
  @override
  Widget build(BuildContext context) {
    return 

                          
                    SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft:Radius.circular(80),topRight: Radius.circular(80))
                        ),
                        padding: EdgeInsets.all(20),
                        height: 550,
                        width: double.infinity,
                        child: Stack(
                        
                          children: [
                      
                            Positioned(
                              top: 5,
                              left: 0,
                              child: Container(
                              height: 90,
                              width: 90,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                image: DecorationImage(image: NetworkImage(
                                 'https://tse3.mm.bing.net/th?id=OIP.RZ9bnziuegU__tCdic0HhgHaE8&pid=Api&P=0&w=300&h=300',
                                ),
                                   fit: BoxFit.cover,),
                                borderRadius: BorderRadius.circular(80)
                              ),
                            )),
                      
                            Positioned(
                              right: 40,
                              child:Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Extra Beef Burger  GEL 19.00',style: TextStyle(
                                  fontSize: 17,color: Colors.black,fontWeight: FontWeight.bold
                                ),),
                      Text('BurgerBoss',style: TextStyle(fontSize: 18,color: Colors.grey,),),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                            Column(
                              children: [
                                Icon(Icons.alarm,size: 20,),
                                       Text('30 Min',style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold,)),
                                     
                             
                              ],
                            ),
                       Transform.rotate(
                                  angle: -1.5708,
                                child: DottedLine(
                                dashColor: Colors.black,
                                dashLength: 4,
                                lineThickness: 1,
                                dashGapLength: 4,
                                                          lineLength: 40,// Adjust as needed
                                                          alignment: WrapAlignment.end,
                                                          ),
                              ),
                               Column(
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
                            
                                     
                              ],
                            ),
                      Transform.rotate(
                                  angle: -1.5708,
                                child: DottedLine(
                                dashColor: Colors.black,
                                dashLength: 4,
                                lineThickness: 1,
                                dashGapLength: 4,
                                                          lineLength: 40,// Adjust as needed
                                                          alignment: WrapAlignment.end,
                                                          ),
                              ),
                      
                       Column(
                              children: [
                             Icon(Icons.bike_scooter,size: 20,),
                             Text('GEL 3.90',style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold,)),                 
                             
                              ],
                            ),
                      
                        ],
                      )
                              ],
                            )
                            
                             ),
                     
                      Padding(
                        padding: const EdgeInsets.only(top: 70),
                        child: Container(
                          
                          child: Column(
                            
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                          
                              Text('Select size',style:TextStyle(
                                fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold
                              ) ,),
                              Text('choose 1 item',style: TextStyle(
                                fontSize: 13,color: Colors.grey
                              ),),
                          SizedBox(height: 9,),
                          Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          
                          children: [
                           Text('Small Menu',style:TextStyle(
                                fontSize: 18,color: Colors.black,
                                fontWeight: FontWeight.bold
                              ) ,),
                           
                               Radio(value: 1, groupValue: 1, onChanged: (value) {}), 
                          
                          ],
                          ),
                          Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          
                          children: [
                           Text('Medium menu',style:TextStyle(
                                fontSize: 18,color: Colors.black,
                                fontWeight: FontWeight.bold
                              ) ,),
                           
                               Radio(value: 1, groupValue: 1, onChanged: (value) {}), 
                          
                          ],
                          ),
                          
                          Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          
                          children: [
                           Text('Standard Menu',style:TextStyle(
                                fontSize: 18,color: Colors.black,
                                fontWeight: FontWeight.bold
                              ) ,),
                           
                               Radio(value: 1, groupValue: 1, onChanged: (value) {}), 
                          
                          ],
                          ),
                          
                          Text('Drinks',style:TextStyle(
                                fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold
                              ) ,),
                              Text('choose 1 item',style: TextStyle(
                                fontSize: 13,color: Colors.grey
                              ),),
                          
                              Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          
                          children: [
                           Text('coca-cola',style:TextStyle(
                                fontSize: 18,color: Colors.black,
                                fontWeight: FontWeight.bold
                              ) ,),
                           
                               Radio(value: 1, groupValue: 1, onChanged: (value) {}), 
                          
                          ],
                          ),
                          
                          Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          
                          children: [
                           Text('pepsi',style:TextStyle(
                                fontSize: 18,color: Colors.black,
                                fontWeight: FontWeight.bold
                              ) ,),
                           
                               Radio(value: 1, groupValue: 1, onChanged: (value) {}), 
                          
                          ],
                          ),
                          Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          
                          children: [
                           Text('fanta',style:TextStyle(
                                fontSize: 18,color: Colors.black,
                                fontWeight: FontWeight.bold
                              ) ,),
                           
                               Radio(value: 1, groupValue: 1, onChanged: (value) {}), 
                          
                          ],
                          ),
                            ],
                            
                          ),
                        ),
                      ),

                      Positioned(
                        right: 20,
                        left: 20,
                        bottom: 0,
                        child: 
                      Container(
                         height: 60,
                         width: 340,
                         decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.black,
                         ),
                         child: Center(
                          child: Text('Add 1 for GEL \$ 12.90',style: TextStyle(
                            color: Colors.white,fontSize: 18
                          ),),
                         ),
                      ))


                          
                          ],
                        ),
                      ),
                    );
  
  }
}