import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class Jadwal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
         appBar: AppBar(
         title: Text(
           'Jadwal',
           style: TextStyle(
             fontSize: 20,
             color: Colors.white,
           ),
           ),
         centerTitle: true,
         backgroundColor: Colors.blueGrey,
         ),

         body: Center(
           child: Container(
             child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    
                    Column(
                    children: <Widget>[

                     Container(
                       
                       width: 150,
                       height: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          
                          border: Border.all(
                            width: 3,
                            color: Colors.blue,
                          )
                        ),

                        
                       child: Column(
                        
                         children: <Widget>[
                           
                           //Divider(height: 2.0),
                           Container(
                             child:Center(
                           child: 
                           Text('Senin',
                           style: new TextStyle(
                             color: Colors.black,
                             
                             fontSize:25,
                            fontWeight: FontWeight.bold,
                               ),
                               
                              ),),
                            margin: EdgeInsets.only(bottom: 10),
                             width: 200,
                             height: 35,
                              color: Colors.blue,
                           ),
                           
                           Container(margin: EdgeInsets.only(top: 6),
                           child: 
                           Text('BDL',
                           style: new TextStyle(
                             color: Colors.black,
                             fontSize:20,                            
                           ),
                           ),                           
                           ),
                           Container(margin: EdgeInsets.only(top: 6),
                           child: 
                           Text('08.00-11.00',
                           style: new TextStyle(
                             color: Colors.grey,
                             fontSize:15,                            
                           ),
                           ),                           
                           ),
                            ],
                             )
                           ),
                             
                            ],
                           ),

                   Column(
                    children: <Widget>[

                     Container(
                       width: 150,
                       height: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),                       
      
                          border: Border.all(
                            width: 3,
                            color: Colors.blue,
                          )
                        ),

                        
                       child: Column(
                         children: <Widget>[
                           Container(
                             child:Center(
                           child: 
                           Text('Selasa',
                           style: new TextStyle(
                             color: Colors.black,
                             
                             fontSize:25,
                            fontWeight: FontWeight.bold,
                               ),
                               
                              ),),
                            margin: EdgeInsets.only(bottom: 10),
                             width: 200,
                             height: 35,
                              color: Colors.blue,
                           ),
                          Container(margin: EdgeInsets.only(top: 6),
                           child: 
                           Text('Mobile',
                           style: new TextStyle(
                             color: Colors.black,
                             fontSize:17,                            
                           ),
                           ),                           
                           ),
                           Container(margin: EdgeInsets.only(top: 6),
                           child: 
                           Text('08.00-11.00',
                           style: new TextStyle(
                             color: Colors.grey,
                             fontSize:12,                            
                           ),
                           ),                           
                           ),
                           Container(margin: EdgeInsets.only(top: 6),
                           child: 
                           Text('Jarkom',
                           style: new TextStyle(
                             color: Colors.black,
                             fontSize:17,                            
                           ),
                           ),                           
                           ),
                           Container(margin: EdgeInsets.only(top: 6),
                           child: 
                           Text('14.00-17.00',
                           style: new TextStyle(
                             color: Colors.grey,
                             fontSize:12,                            
                           ),
                           ),                           
                           ),
                         ],
                       )
                     ),
                      ],
                    ),
                  ],
                ),
             Padding(
               padding: EdgeInsets.only(top: 10),
             ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    
                    Column(
                    children: <Widget>[

                     Container(
                       
                       width: 150,
                       height: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          
                          border: Border.all(
                            width: 3,
                            color: Colors.blue,
                          )
                        ),

                        
                       child: Column(
                        
                         children: <Widget>[
                           Container(
                             child:Center(
                           child: 
                           Text('Rabu',
                           style: new TextStyle(
                             color: Colors.black,
                             
                             fontSize:25,
                            fontWeight: FontWeight.bold,
                               ),
                               
                              ),),
                            margin: EdgeInsets.only(bottom: 10),
                             width: 200,
                             height: 35,
                              color: Colors.blue,
                           ),
                           
                           Container(margin: EdgeInsets.only(top: 6),
                           child: 
                           Text('TM',
                           style: new TextStyle(
                             color: Colors.black,
                             fontSize:20,                            
                           ),
                           ),                           
                           ),
                           Container(margin: EdgeInsets.only(top: 6),
                           child: 
                           Text('13.00-15.00',
                           style: new TextStyle(
                             color: Colors.grey,
                             fontSize:15,                            
                           ),
                           ),                           
                           ),
                            ],
                             )
                           ),
                            ],
                           ),

                   Column(
                    children: <Widget>[

                     Container(
                       width: 150,
                       height: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),                       
      
                          border: Border.all(
                            width: 3,
                            color: Colors.blue,
                          )
                        ),

                        
                       child: Column(
                         children: <Widget>[
                           Container(
                             child:Center(
                           child: 
                           Text('Kamis',
                           style: new TextStyle(
                             color: Colors.black,
                             
                             fontSize:25,
                            fontWeight: FontWeight.bold,
                               ),
                               
                              ),),
                            margin: EdgeInsets.only(bottom: 10),
                             width: 200,
                             height: 35,
                              color: Colors.blue,
                           ),
                           
                           Container(margin: EdgeInsets.only(top: 6),
                           child: 
                           Text('Robotika',
                           style: new TextStyle(
                             color: Colors.black,
                             fontSize:20,                            
                           ),
                           ),                           
                           ),
                           Container(margin: EdgeInsets.only(top: 6),
                           child: 
                           Text('15.00-18.00',
                           style: new TextStyle(
                             color: Colors.grey,
                             fontSize:15,                            
                           ),
                           ),                           
                           ),
                           
                        
                         ],
                       )
                     ),
                      ],
                    ),
                  ],
                ),
                Padding(
               padding: EdgeInsets.only(top: 10),
             ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    
                    Column(
                    children: <Widget>[

                     Container(
                       
                       width: 150,
                       height: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          
                          border: Border.all(
                            width: 3,
                            color: Colors.blue,
                          )
                        ),

                        
                       child: Column(
                        
                         children: <Widget>[
                           Container(
                             child:Center(
                           child: 
                           Text('Jumat',
                           style: new TextStyle(
                             color: Colors.black,
                             
                             fontSize:25,
                            fontWeight: FontWeight.bold,
                               ),
                               
                              ),),
                            margin: EdgeInsets.only(bottom: 10),
                             width: 200,
                             height: 35,
                              color: Colors.blue,
                           ),
                          Container(margin: EdgeInsets.only(top: 6),
                           child: 
                           Text('Assesment',
                           style: new TextStyle(
                             color: Colors.black,
                             fontSize:17,                            
                           ),
                           ),                           
                           ),
                           Container(margin: EdgeInsets.only(top: 6),
                           child: 
                           Text('08.00-11.00',
                           style: new TextStyle(
                             color: Colors.grey,
                             fontSize:12,                            
                           ),
                           ),                           
                           ),
                           Container(margin: EdgeInsets.only(top: 6),
                           child: 
                           Text('Web Lanjut',
                           style: new TextStyle(
                             color: Colors.black,
                             fontSize:17,                            
                           ),
                           ),                           
                           ),
                           Container(margin: EdgeInsets.only(top: 6),
                           child: 
                           Text('11.00-14.00',
                           style: new TextStyle(
                             color: Colors.grey,
                             fontSize:12,                            
                           ),
                           ),                           
                           ),
                            ],
                             )
                           ),
                            ],
                           ),

                   
                  ],
                ),

               ],
               )
           ),
         ),
    );
  }
}
