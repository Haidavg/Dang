import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'main_ban_be.dart';
void main() {
  runApp(const BanBeStep2());
}

class BanBeStep2 extends StatelessWidget {
  const BanBeStep2({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePageBanBeStep2(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePageBanBeStep2 extends StatefulWidget {
  const MyHomePageBanBeStep2({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePageBanBeStep2> createState() => _MyHomePageBanBeStep2();
}

class _MyHomePageBanBeStep2 extends State<MyHomePageBanBeStep2> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      
    
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
     
      body: Container(
        padding: EdgeInsets.fromLTRB(45, 140, 45,220),
      
        child: Container(
          decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(17),
             border: Border.all(width: 3)
          ),
         child: Column(
          children: [
            
            Row(
              children: [
                Expanded(flex:1,
                child: Container(
                  
                  height: 100,
                 margin: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
            
                  child: Container(
            //      width: 170,
            // height: 40,
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
                      progressColor: Colors.red,
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
             Container(
               
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                       padding: EdgeInsets.all(10),
            // margin: EdgeInsets.fromLTRB(70, 0, 0, 0),
            decoration: BoxDecoration(
                   color: Color.fromARGB(255, 153, 217, 234),
                  border: Border.all(width: 2),
                  
                   borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  
                  child:  Column(
                    children: [
                      Text('Màn chơi gần nhất',style: TextStyle(fontSize: 14),),
                       Text('10-5',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    ],
                  ),
                           
                ),
                    ),
                    Container(
               
                child: Row(
                  children: [
                    Container(
                       padding: EdgeInsets.all(10),
            // margin: EdgeInsets.fromLTRB(70, 0, 0, 0),
            decoration: BoxDecoration(
                  color: Color.fromARGB(255, 153, 217, 234),
                  border: Border.all(width: 2),
                  
                   borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  child:  Column(
                    children: [
                      Text('Thứ hạng',style: TextStyle(fontSize: 14),),
                       Text('4',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    ],
                    
                  ),
                  
                           
                ),
                    ),
                     
                  
                  ],
                ),
                
              ),
              
                  ],
                  
                ),
                
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(170, 30, 0, 0),
                child: Container(
                      
                      decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 4),
                    ),
                      child: TextButton(
                  
                      
                  
                      onPressed: () { },
                  
                      child: Text('Kết Bạn',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                  
                  
                  
                  ),
                    ),
              ),
          ],
          
         ),
         
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          splashColor: Colors.purple,
        
        onPressed:(){
          Navigator.of(context).popUntil((route) => route.isFirst);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => RunBanBe()));
        },
        tooltip: 'Trở về',
        child: const Icon(Icons.arrow_back),
      ),
       floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
    );
  }
}
