
import 'package:flutter/material.dart';
import 'main.dart';
import 'compoment/nguoichoi.dart';
import 'models/dbnguoichoi.dart';
void main() {
  runApp(const RunTimNguoiChoi());
}

class RunTimNguoiChoi extends StatelessWidget {
  const RunTimNguoiChoi({super.key});

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
        
        body: const MyHomePageNguoiChoi(),
      ),
    );
  }
}

class MyHomePageNguoiChoi extends StatefulWidget {
  const MyHomePageNguoiChoi({super.key,});
  

  @override
  State<MyHomePageNguoiChoi> createState() => _MyHomePageNguoiChoi();
}

class _MyHomePageNguoiChoi extends State<MyHomePageNguoiChoi> {
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
          child: Expanded(
            
            
            child: 
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text('Nhập tên cần tìm:',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: const TextField(
  // obscureText: true,
  decoration: InputDecoration(
   
    labelText: 'Username',
    hintText: 'VD:ThaiLe123',
  ),
),
                  ),
                 Padding(
                   padding: const EdgeInsets.fromLTRB(0, 10,20, 10),
                   child: Align(
                    alignment: Alignment.bottomRight,
                    
                     child:            TextButton.icon(
               style: TextButton.styleFrom(

                 primary: Colors.black,
                  side: BorderSide(color: Colors.black),
                  shadowColor: Colors.blue.withOpacity(0.5),
                 shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(16),
               ),
                  // text + icon color
               ),
               icon: Icon(Icons.search, size: 18),
               label: Text('Tìm kiếm', style: TextStyle(fontSize: 18)),
               onPressed: () {},
             ),

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
                      itemCount: list_nguoi_choi.length,
                      itemBuilder: (BuildContext context, int index) {
                        
                        return
                        
                            MyWidget(a: list_nguoi_choi[index]);
                      }),
                 ),
        ),
        ],) ,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          splashColor: Colors.purple,
        
        onPressed: (){
          Navigator.of(context).popUntil((route) => route.isFirst);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyApp()));
        },
        tooltip: 'Trở về',
        child: const Icon(Icons.arrow_back),
      ),
       floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
       
        );
        
       
   
    
  }
}
