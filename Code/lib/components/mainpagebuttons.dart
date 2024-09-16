import 'package:flutter/material.dart';

class Buttonscall extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        child: Row(children: [
          Expanded(child: Container()),
          Container(
              height: 200,
              width: 300,
              child: Stack(children: [
                Column(
                  children: [
                    Container(
                      height: 50,
                    ),
                    Container(
                        child: Row(
                      children: [
                        Container(
                          height: 60,
                          //width: MediaQuery.of(context).size.width,
                          width: 150,
                          decoration: BoxDecoration(),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    alignment: Alignment.centerLeft,
                                    fixedSize: Size(150, 60)),
                                child: Text('Đấu Online'),
                              )),
                        ),
                        Expanded(child: Container())
                      ],
                    )),
                    Container(
                        child: Row(
                      children: [
                        Container(
                          height: 60,
                          //width: MediaQuery.of(context).size.width,
                          width: 150,
                          decoration: BoxDecoration(),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    alignment: Alignment.centerLeft,
                                    fixedSize: Size(150, 60)),
                                child: Text('Cửa hàng'),
                              )),
                        ),
                        Expanded(child: Container())
                      ],
                    )),
                  ],
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: PlayButton(),
                )
              ]))
        ]));
  }
}

class PlayButton extends StatefulWidget {
  PlayButton();

  State<PlayButton> createState() => _PlayButton();
}

class _PlayButton extends State<PlayButton> {
  //var _body_content = Column(children: [Text('Test')]);
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(100),
          //border: Border.all(color: Colors.black, width: 1, style: BorderStyle.solid)
        ),
        child: ElevatedButton(
            onPressed: () {
              //body_content = _body_content;
              //main();
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100))),
            child: Image.asset(
              'asset/icons/play_icon.png',
              fit: BoxFit.fill,
            )));
  }
}
