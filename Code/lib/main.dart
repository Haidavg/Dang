import 'package:do_an_ltdd/components/QuestionBox.dart';
import 'package:do_an_ltdd/components/online_battle.dart';
import 'package:flutter/material.dart';
import 'components/profileinfo.dart';
import 'components/mainpagebuttons.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  HomePage();

  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  _HomePage();

  var body_content = Column(children: [
    ProfileWidget(),
    Expanded(child: Container()),
    Buttonscall(),
  ]);
  var ques_box = Container(
      child: Column(
    //mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Row(
        children: [
          TopBarInfo(),
        ],
      ),
      QuestionBox(),
      //Row(
      //children: [
      AnswerBox(),
      //HelpBox(),
      //],
      //),
    ],
  ));
  var onl_battle = Column(
    children: [
      Row(
        children: [CoopTopBar()],
      ),
      QuestionBox(),
      AnswerCoop(),
    ],
  );
  var coop_ani = Column(
    children: [
      Row(
        children: [CoopTopBar()],
      ),
      PlayersPlace(),
    ],
  );
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Học cùng 3 kon 0',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Scaffold(
          body: Container(
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 153, 217, 234)),
              child: coop_ani),
        ));
  }
}
