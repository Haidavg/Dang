import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class QuestionBox extends StatefulWidget {
  const QuestionBox({super.key});

  @override
  State<QuestionBox> createState() => _QuestionBoxState();
}

class _QuestionBoxState extends State<QuestionBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 2,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          border: Border.all(
              width: 1, color: Colors.black, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(10)),
      child: Text(
          '2 con vịt đi trước 2 con vịt, 2 con vịt đi sau 2 con vịt, 2 con vịt đi giữa 2 con vịt. Hỏi có mấy con vịt?'),
    );
  }
}

class TopBarInfo extends StatefulWidget {
  const TopBarInfo({super.key});

  @override
  State<TopBarInfo> createState() => _TopBarInfoState();
}

class _TopBarInfoState extends State<TopBarInfo> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            //height: 100,
            margin: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            child: Stack(children: [
              Column(children: [
                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                  Container(
                    child: ElevatedButton(
                      child: Icon(Icons.arrow_back, size: 40),
                      onPressed: () {},
                    ),
                  ),
                  Expanded(child: Container()),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('Lê Quốc Thái : Player'),
                      Text('10/20 : Question'),
                      Text('1000 : Scores'),
                    ],
                  )
                ]),
              ]),
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  'asset/logo/3 KON 0.png',
                  height: 40,
                  width: 40,
                ),
              ),
            ])));
  }
}

class AnswerBox extends StatefulWidget {
  const AnswerBox({super.key});

  @override
  State<AnswerBox> createState() => _AnswerBoxState();
}

class _AnswerBoxState extends State<AnswerBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: (MediaQuery.of(context).size.height * 3) / 10,
      margin: EdgeInsets.all(10),
      child: Row(children: [
        Expanded(
          child: Column(children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 2, 2),
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(5)),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.black,
                              backgroundColor: Colors.white,
                              fixedSize: Size(
                                  MediaQuery.of(context).size.width * 3 / 4,
                                  MediaQuery.of(context).size.height / 5)),
                          onPressed: () {},
                          child: Text('1')),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(2, 0, 0, 2),
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(5)),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.black,
                              backgroundColor: Colors.white,
                              fixedSize: Size(
                                  MediaQuery.of(context).size.width * 3 / 4,
                                  MediaQuery.of(context).size.height / 5)),
                          onPressed: () {},
                          child: Text('2')),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 2, 2, 0),
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(5)),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.black,
                              backgroundColor: Colors.white,
                              fixedSize: Size(
                                  MediaQuery.of(context).size.width * 3 / 4,
                                  MediaQuery.of(context).size.height / 5)),
                          onPressed: () {},
                          child: Text('3')),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(2, 2, 0, 0),
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(5)),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.black,
                              backgroundColor: Colors.white,
                              fixedSize: Size(
                                  MediaQuery.of(context).size.width * 3 / 4,
                                  MediaQuery.of(context).size.height / 5)),
                          onPressed: () {},
                          child: Text('4')),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
        Container(
          width: 70,
          child: Column(children: [
            Container(
              child: Stack(children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1),
                      borderRadius: BorderRadius.circular(25)),
                  child: Icon(Icons.arrow_back, size: 40),
                ),
                Positioned(right: 0, bottom: 0, child: Text('10')),
              ]),
            ),
            Expanded(child: Container()),
            Container(
              child: Stack(children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1),
                      borderRadius: BorderRadius.circular(25)),
                  child: Icon(Icons.percent, size: 40),
                ),
                Positioned(right: 0, bottom: 0, child: Text('10')),
              ]),
            ),
            Expanded(child: Container()),
            Container(
              child: Stack(children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1),
                      borderRadius: BorderRadius.circular(25)),
                  child: Icon(Icons.phone, size: 40),
                ),
                Positioned(right: 0, bottom: 0, child: Text('10')),
              ]),
            ),
          ]),
        )
      ]),
    );
  }
}


// class HelpBox extends StatefulWidget {
//   const HelpBox({super.key});

//   @override
//   State<HelpBox> createState() => _HelpBoxState();
// }

// class _HelpBoxState extends State<HelpBox> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(children: [
//         Container(
//           child: Icon(Icons.arrow_back, size: 40),
//         ),
//         Container(
//           child: Icon(Icons.percent, size: 40),
//         ),
//         Container(
//           child: Icon(Icons.phone, size: 40),
//         ),
//       ]),
//     );
//   }
// }
