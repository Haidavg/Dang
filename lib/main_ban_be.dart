
import 'package:flutter/material.dart';
import 'package:flutter_application_2/main_nguoi_choi.dart';
import 'main.dart';
import 'compoment/banbe.dart';
import 'models/dbbanbe.dart';
void main() {
  runApp(const RunBanBe());
}

class RunBanBe extends StatelessWidget {
  const RunBanBe({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
       debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        body: const MyHomePageBanBe(),
      ),
    );
  }
}

class MyHomePageBanBe extends StatefulWidget {
  const MyHomePageBanBe({super.key,});
  

  @override
  State<MyHomePageBanBe> createState() => _MyHomePageBanBe();
}

class _MyHomePageBanBe extends State<MyHomePageBanBe> {
    void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
     
    });
  }
  @override
  Widget build(BuildContext context) {
    return 
        Scaffold( 
         
          body:
        Column(children: [Container(
          height: 180,
          width: MediaQuery.of(context).size.width,
      
          child: Expanded(
            
            
            child: 
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
   Align(
              alignment: Alignment.bottomLeft,
              child: Text('Danh Sách Bạn Bè',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)),
               Padding(
                 padding: const EdgeInsets.only(top: 50),
                 child: Container(
                      
                      decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 4),
                    borderRadius: BorderRadius.circular(12)
                    ),
              child:  TextButton.icon(
             style: TextButton.styleFrom(
               primary: Colors.black, // text + icon color
             ),
             icon: Icon(Icons.search, size: 15),
             label: Text('Tìm bạn bè', style: TextStyle(fontSize: 15)),
             onPressed: () {
               Navigator.of(context).popUntil((route) => route.isFirst);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => RunTimNguoiChoi()));
             },
           ),      
              //   child: TextButton(
                  
                      
                  
              //         onPressed: () {
              //           Navigator.of(context).popUntil((route) => route.isFirst);
              // // Navigator.push(
              // //     context, MaterialPageRoute(builder: (context) => RunXepHang()));
              //          },
                  
              //         child: Icon(Icons.event_note,size: 40,color: Colors.black,),
                  
                  
                  
              //     ),
                    ),
               ),
                ],
              ),
           
            ),
            ),
        ),
        Container(
          
          child: Expanded(
                 
                   child: ListView.builder(
                      itemCount: list_ban_be.length,
                      itemBuilder: (BuildContext context, int index) {
                        
                        return
                        
                            BanBe(a: list_ban_be[index]);
                      }),
                 ),
        ),
        ],) ,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          splashColor: Colors.purple,
        
        onPressed: (){ Navigator.of(context).popUntil((route) => route.isFirst);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyApp()));},
        tooltip: 'Trở về',
        child: const Icon(Icons.arrow_back),
      ),
       floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
       
        );
        
       
   
    
  }
}
