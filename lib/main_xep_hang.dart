
import 'package:flutter/material.dart';
import 'main.dart';
import 'compoment/xephang.dart';
import 'models/dbtop.dart';
void main() {
  runApp(const RunXepHang());
}

class RunXepHang extends StatelessWidget {
  const RunXepHang({super.key});

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
        
        body: const MyHomePageXepHang(),
      ),
    );
  }
}

class MyHomePageXepHang extends StatefulWidget {
  const MyHomePageXepHang({super.key,});
  

  @override
  State<MyHomePageXepHang> createState() => _MyHomePageXepHang();
}

class _MyHomePageXepHang extends State<MyHomePageXepHang> {
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
             child: Align(
              alignment: Alignment.bottomLeft,
              child: Text('Bảng Xếp Hạng',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)),
            ),
            ),
        ),
        Container(
         
          child: Expanded(
                 
                   child: ListView.builder(
                      itemCount: list_top_nguoi_choi.length,
                      itemBuilder: (BuildContext context, int index) {
                        
                        return
                        
                            XepHang(a: list_top_nguoi_choi[index]);
                      }),
                 ),
        ),
        ],) ,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          splashColor: Colors.purple,
        
        onPressed:(){
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
