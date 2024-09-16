import 'package:flutter/material.dart';

class ProfileWidget extends StatefulWidget {
  ProfileWidget();

  State<ProfileWidget> createState() => _ProfileWidget();
}

class _ProfileWidget extends State<ProfileWidget> {
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      child: Row(children: [
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  color: Colors.black, width: 1, style: BorderStyle.solid),
              image: DecorationImage(
                image: AssetImage('asset/images/profileimage.png'),
                fit: BoxFit.cover,
              )),
        ),
        Container(
          child: Column(children: [
            PlayerNameBox(),
            PlayerSaving(),
          ]),
        ),
      ]),
    );
  }
}

class PlayerNameBox extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        border:
            Border.all(color: Colors.black, width: 1, style: BorderStyle.solid),
      ),
      child: Row(children: [
        Text('Tên Player')
      ]), //sau này thay giá trị bằng tham số truyền vào
    );
  }
}

class PlayerSaving extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 200,
      child: Row(children: [
        Container(
            height: 40,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                  color: Colors.black, width: 1, style: BorderStyle.solid),
            ),
            child: Row(children: [
              Image.asset(
                'asset/icons/5208300.png',
                width: 50,
                height: 50,
              ),
              Text('1000'),
              Expanded(
                  child: Column(
                children: [Text('')],
              )),
            ]) //sau này thay giá trị bằng tham số truyền vào
            )
      ]),
    );
  }
}
