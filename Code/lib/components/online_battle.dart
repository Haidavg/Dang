import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:do_an_ltdd/components/QuestionBox.dart';
import 'package:percent_indicator/percent_indicator.dart';

class AnswerCoop extends StatefulWidget {
  const AnswerCoop({super.key});

  @override
  State<AnswerCoop> createState() => _AnswerCoopState();
}

class _AnswerCoopState extends State<AnswerCoop> {
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
      ]),
    );
  }
}

class CoopTopBar extends StatefulWidget {
  const CoopTopBar({super.key});

  @override
  State<CoopTopBar> createState() => _CoopTopBarState();
}

class _CoopTopBarState extends State<CoopTopBar> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            //height: 100,
            margin: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            child: Stack(children: [
              Column(children: [
                Row(/*crossAxisAlignment: CrossAxisAlignment.center,*/ children: [
                  Row(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Expanded(child: Container()),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          //borderRadius: BorderRadius.circular(30)
                        ),
                        child: Image.asset(
                          'asset/images/profileimage.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Column(
                        children: [
                          Text('Lê Quốc Thái'),
                          new LinearPercentIndicator(
                            width: MediaQuery.of(context).size.width / 5,
                            percent: 1,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Expanded(child: Container()),
                  Row(
                    //crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        children: [
                          Text('Bùi Thế Khải'),
                          new LinearPercentIndicator(
                            width: MediaQuery.of(context).size.width / 5,
                            percent: 1,
                          ),
                        ],
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          //borderRadius: BorderRadius.circular(30)
                        ),
                        child: Image.asset(
                          'asset/images/profileimage.png',
                          fit: BoxFit.cover,
                        ),
                      ),
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

class PlayersPlace extends StatefulWidget {
  const PlayersPlace({super.key});

  @override
  State<PlayersPlace> createState() => _PlayersPlaceState();
}

class _PlayersPlaceState extends State<PlayersPlace> {
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Container(
            child: Column(children: [
          Row(children: [
            Expanded(child: Container()),
            Container(
                child: Row(children: [
              Icon(Icons.android, size: 70),
              Image.asset(
                'asset/icons/sword-256.png',
                height: 70,
              )
            ])),
            Expanded(child: Container()),
            Container(
                child: Row(children: [
              Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.rotationY(3.14),
                  child: Image.asset(
                    'asset/icons/sword-duotone-128.png',
                    height: 70,
                  )),
              Icon(Icons.android, size: 70),
            ])),
            Expanded(child: Container()),
          ]),
        ])));
  }
}
