import '../models/dbtop.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';


class XepHang extends StatefulWidget {
  const XepHang({super.key, required this.a});
  final name a;

  @override
  State<XepHang> createState() => _XepHang();
}

class _XepHang extends State<XepHang> {
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
          Expanded(child: Text(widget.a.ten,style: TextStyle(fontSize: 17),)),
         Container(
          width: 90,
           child: Expanded(child:  
                     Image(image:NetworkImage(widget.a.top)),  

           ),
         ),
        ],
      ),
      )
    ); 
  
  }
}
