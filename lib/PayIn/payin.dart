import 'package:flutter/material.dart';

import '../colors.dart';

class Payin extends StatefulWidget {
  @override
  _PayinState createState() => _PayinState();
}

class _PayinState extends State<Payin> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: getBody(),
    );
  }

  getBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(children: [Text("2", style: TextStyle(fontWeight: FontWeight.bold))]),
        Padding(padding: const EdgeInsets.only(top: 20.0),),
        Padding(padding: EdgeInsets.only(left: 35.0, bottom: 10.0), child: Row(children: [blueText('Payin', 25.0)],)),
        Center(
          child: Container(
            height: 100.0,
            width: 100.0,
            child: Image.asset('assets/1.png',),
          ),

        ),
        Padding(padding: const EdgeInsets.only(top: 20.0),),
        SizedBox(
          height: MediaQuery.of(context).size.height / 3,
          width: MediaQuery.of(context).size.width / 1.4,
                  child: new Card(
            
            elevation: 10.0,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(10.0)),
                Row(children: [Padding(padding: EdgeInsets.only(left: 15.0), child: blueText('Notifications'),)],),
                Padding(padding: EdgeInsets.only(left: 20.0, top: 20.0), child: new Text('You Recieved Rs. 4000 Salary'),),
                Padding(padding: EdgeInsets.only(left: 20.0, top: 20.0), child: new Text('You Recieved Rs. 4000 Salary'),),
              ],
            ),
          ),
        )
      ],
    );
  }

  blueText(String txt, [double size=22.0]) {
    return new Text(txt, style: new TextStyle(color: blueColor, fontSize: size, fontWeight: FontWeight.bold, letterSpacing: 0.8),);
  }
}