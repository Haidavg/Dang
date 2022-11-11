import 'dart:ui';
import 'package:flutter_application_2/main_xep_hang.dart';
import 'package:flutter/material.dart';
import 'main_ban_be.dart';
import 'package:percent_indicator/percent_indicator.dart'; 
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
     
      body: Container(
        decoration: BoxDecoration(
              color: Color.fromARGB(255, 153, 217, 234),
               
              
            ),
        child: Column(
          
          children: [
            
            Container(
            // decoration: BoxDecoration(
            //   color: Color.fromARGB(255, 153, 217, 234),
               
              
            // ),
            child: Row(
              children: [
                Expanded(flex:1,
                child: Container(
                  
                  height: 120,
                 margin: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
            
                  child: Container(
                 width: 150,
            height: 120,
                decoration: BoxDecoration(
                   
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: Colors.black, width: 1, style: BorderStyle.solid),
                    image: DecorationImage(
                      image: AssetImage('asset/images/profileimage.png'),
                      fit: BoxFit.cover,
                    )),
              ),
                )),
                 Expanded(flex:2,child:
                 Column(
                  children: [
                    Text('Lê Quốc Thái',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                    new LinearPercentIndicator(
                      
                      animation: true,
                      lineHeight: 20.0,
                      animationDuration: 5000,
                      percent: 0.5,
                      center: Text("50.0%"),
                      linearStrokeCap: LinearStrokeCap.roundAll,
                      progressColor: Colors.green,
                    ),
                    Row(
                      children: [
                        Text('LV.23',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        Expanded(child: Container()),
                        Text('1000/2000'),
                      ],
                    )
                  ],
                 )
                 ),
              ],
            ),
            
              
              ),
              Container(
                // color: Colors.red,
                color: Color.fromARGB(255, 153, 217, 234),
                child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        // margin: EdgeInsets.fromLTRB(50, 60, 20, 10),
            padding: EdgeInsets.all(10),
            // margin: EdgeInsets.fromLTRB(70, 0, 0, 0),
            decoration: BoxDecoration(
                  color: Color.fromARGB(255, 127, 213, 216),
                  border: Border.all(width: 2),
                  
                   borderRadius: BorderRadius.circular(20),
                ),
          
                      child: Container(
                        width: 117,
                        height: 50,
                        child: Expanded(flex:1,child: Column(
                          children: [
                            Text('Màn chơi gần nhất',style: TextStyle(fontSize: 14),),
                            Expanded(child: Container()),
                            Text('10-5',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                          ],
                        ))),
                    ),

                   Container(
                        // margin: EdgeInsets.fromLTRB(50, 60, 20, 10),
            padding: EdgeInsets.all(10),
            // margin: EdgeInsets.fromLTRB(130, 0, 0, 0),
            decoration: BoxDecoration(
                  color: Color.fromARGB(255, 127, 213, 216),
                  border: Border.all(width: 2),
                  
                   borderRadius: BorderRadius.circular(20),
                ),
          
                      child: Container(
                        width: 117,
                        height: 50,
                        child: Expanded(flex:1,child:  Column(
                          children: [
                            Text('Thứ hạng',style: TextStyle(fontSize: 14),),
                            Expanded(child: Container()),
                            Text('20',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                          ],
                        ))),
                    ),


                  ],
                  
                ),
                
              ),
             Padding(
               padding: const EdgeInsets.fromLTRB(10, 40, 280, 30),
               child: Text('Quyền trợ giúp',style:TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
             ),
             Container(
              padding: EdgeInsets.all(50),
            // margin: EdgeInsets.fromLTRB(130, 0, 0, 0),
            decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 2),
                  
                   borderRadius: BorderRadius.circular(20),
                ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 Stack(
                   children:[ Container(
                          // margin: EdgeInsets.fromLTRB(50, 60, 20, 10),
                          margin: EdgeInsets.only(right: 230),
                             padding: EdgeInsets.all(10),
                             // margin: EdgeInsets.fromLTRB(130, 0, 0, 0),
                             decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(width: 2),
                    
                     borderRadius: BorderRadius.circular(170),
                                 ),
                           
                        child: Container(
                          width: 40,
                          height: 40,
                          child: Expanded(flex:1,child:  Column(
                            children: [
                              Icon(Icons.arrow_back,size: 40,),
                              
                            ],
                          ),
                          ),
                          ),
                          
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 115),
                        // margin: EdgeInsets.fromLTRB(50, 60, 20, 10),
            padding: EdgeInsets.all(10),
            // margin: EdgeInsets.fromLTRB(130, 0, 0, 0),
            decoration: BoxDecoration(
                 color: Colors.grey,
                  border: Border.all(width: 2),
                  
                   borderRadius: BorderRadius.circular(90),
                ),
          
                      child: Container(
                        width: 40,
                        height: 40,
                        child: Expanded(flex:1,child:  Column(
                          children: [
                            Icon(Icons.percent_sharp,size: 40,),
                           
                          ],
                        ))),
                    ),
                     Container(
                      
                        // margin: EdgeInsets.fromLTRB(50, 60, 20, 10),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(left: 230),
            // margin: EdgeInsets.fromLTRB(130, 0, 0, 0),
            decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(width: 2),
                  
                   borderRadius: BorderRadius.circular(170),
                ),
          
                      child: Container(
                        width: 40,
                        height: 40,
                        child: Expanded(flex:1,child:  Column(
                          children: [
                            Icon(Icons.call,size: 40,),
                          ],
                        ))),
                      

                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(60, 50, 0, 0),
                      child: Container(
                        child: Text(
                          '1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(180, 50, 0, 0),
                      child: Container(
                        child: Text(
                          '2',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(293, 50, 0, 0),
                      child: Container(
                        child: Text(
                          '3'
                        ),
                      ),
                    ),
                   ],
                 ),   
                    
                     
                    
                    
                 
               ],
               
               
              ),
              
              
             ),
             Padding(
               padding: const EdgeInsets.only(top: 130),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    
                    decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 4),
                  ),
                    child: TextButton(
                
                    
                
                    onPressed: () { },
                
                    child: Icon(Icons.arrow_back,size: 40,color: Colors.black,),
                
                
                
                ),
                  ),
                  Container(
                    
                    decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 4),
                  ),
                    child: TextButton(
                
                    
                
                    onPressed: () {
                      Navigator.of(context).popUntil((route) => route.isFirst);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => RunXepHang()));
                     },
                
                    child: Icon(Icons.event_note,size: 40,color: Colors.black,),
                
                
                
                ),
                  ),
                   Container(
                    
                    decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 4),
                  ),
                    child: TextButton(
                
                    
                
                    onPressed: () {
                      Navigator.of(context).popUntil((route) => route.isFirst);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => RunBanBe()));
                     },
                
                    child: Icon(Icons.people,size: 40,color: Colors.black,),
                
                
                
                ),
                  ),
                ],
               ),
             )
            
             
          ],
          
        ),
      
      ),
      
 
    );
  }
}
