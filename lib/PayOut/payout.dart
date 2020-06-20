import 'package:flutter/material.dart';

import '../colors.dart';
import '../colors.dart';
import '../colors.dart';

class Payout extends StatefulWidget {
  @override
  _PayoutState createState() => _PayoutState();
}

class _PayoutState extends State<Payout> {
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
        Row(children: [
          Text("1", style: TextStyle(fontWeight: FontWeight.bold))
        ]),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
        ),
        Padding(
            padding: EdgeInsets.only(left: 35.0, bottom: 10.0),
            child: Row(
              children: [blueText('Payout', 25.0)],
            )),
        Padding(
            padding: EdgeInsets.only(left: 45.0, bottom: 10.0),
            child: Row(
              children: [
                Text(
                  'Balance Rs. 4000',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: blueColor,
                  ),
                )
              ],
            )),
        Padding(
          padding: EdgeInsets.fromLTRB(0.0, 0.0, 40.0, 5.0),
          child: new Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(
                onPressed: () {},
                color: blueColor,
                child: Text('Pay now',
                    style: TextStyle(
                      color: Colors.white,
                    )),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.5)),
              ),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 20.0),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 3,
          width: MediaQuery.of(context).size.width / 1.4,
          child: new Card(
            elevation: 10.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(10.0)),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: blueText('History'),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 20.0),
                  child: new Text('You Recieved Rs. 4000 COD for order #10711'),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 20.0),
                  child: new Text('You Recieved Rs. 1100 for order #10006'),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  blueText(String txt, [double size = 22.0]) {
    return new Text(
      txt,
      style: new TextStyle(
          color: blueColor,
          fontSize: size,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.8),
    );
  }
}
