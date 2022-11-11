import 'package:flutter_application_2/main.dart';
import 'package:flutter_application_2/main_banbe2.dart';
import '../models/dbnguoichoi.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';


class MyWidget extends StatefulWidget {
  const MyWidget({super.key, required this.a});
  final name a;

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return
    Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 153, 217, 234),
      ),
      child:
      Container(
        
        margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 2, color: Colors.black),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.blueAccent.withOpacity(0.9),
            blurRadius: 8,
            // offset: const Offset(0.0, 0.0),
          )
        ],
      ),
      child: Row(
        children: [
           Container(
            width: 120,
            child: Expanded(child: Image(image:NetworkImage(widget.a.hinh)))),
          Expanded(child: TextButton(onPressed: (){
            showDialog(context: context, builder: (context)=>AlertDialog(
             title: Text(widget.a.ten),
             content: Text('Kết bạn với mình nhé!'),
             actions: [
              OutlinedButton(onPressed: (){
                 Navigator.of(context).popUntil((route) => route.isFirst);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => BanBeStep2()));
              }, child: Text('Xem Thông Tin')),
               OutlinedButton(onPressed: (){
                Navigator.of(context).pop();
               }, child: Text('Đóng')),
             ],
            ));
          }, child: Text(widget.a.ten,style: TextStyle(fontSize: 17),))
          // Text(widget.a.ten,style: TextStyle(fontSize: 17),)
          ),
         Container(
          width: 60,
           child: Expanded(child:  
                     TextButton.icon(
                 style: TextButton.styleFrom(

                   primary: Colors.black,
                    side: BorderSide(color: Colors.black),
                    shadowColor: Colors.blue.withOpacity(0.5),
                    backgroundColor: Colors.grey,
                   shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(30),
                 ),
                    // text + icon color
                 ),
                 icon: Icon(Icons.find_in_page, size: 25),
                 label: Text('',),
                 onPressed: () {},
               ),  

           ),
         ),
        ],
      ),
      )
    ); 
  
  }
}
