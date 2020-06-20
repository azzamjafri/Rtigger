import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rtiggers/colors.dart';

class ActiveOrder extends StatefulWidget {
  @override
  _ActiveOrderState createState() => _ActiveOrderState();
}

class _ActiveOrderState extends State<ActiveOrder> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 1.7,
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)),
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("1 Order #123"),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: new BoxDecoration(
                            color: brownColor,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          padding: EdgeInsets.all(5),
                          height: 30,
                          width: 70,
                          // color: brownColor,
                          child: Center(
                              child: Text(
                            "Pickup",
                            style: TextStyle(color: Colors.white),
                          )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: new BoxDecoration(
                            color: brownColor,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          padding: EdgeInsets.all(5),
                          height: 30,
                          width: 70,
                          child: Center(
                              child: Text(
                            "Delivery",
                            style: TextStyle(color: Colors.white),
                          )),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Medicine Name',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Pay Through : ',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: greenColor,
                        ),
                        child: Text(
                          'Paid Through Gpay',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                  Row(
                    children: [
                      Container(
                        child: Image.asset("assets/1.png"),
                        height: 50.0,
                        width: 50.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                        child: Text('Medical Address'),
                      ),
                      Expanded(
                                              child: Container(
                          child: Image.asset("assets/pppp.png"),
                          height: 50.0,
                          width: 50.0,
                        ),
                      ),
                      Expanded(
                                              child: Container(
                          child: Image.asset("assets/2.png"),
                          height: 35.0,
                          width: 35.0,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Deliver To :',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                        child: Text('Name of the Person\n\t\t\tAddress'),
                      ),
                      Container(
                        child: Image.asset("assets/pppp.png"),
                        height: 50.0,
                        width: 50.0,
                      ),
                      Container(
                        child: Image.asset("assets/2.png"),
                        height: 35.0,
                        width: 35.0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      Positioned(
        top: MediaQuery.of(context).size.height / 1.8,
        left: MediaQuery.of(context).size.width / 6,
              child: Container(
          height: 50.0,
          width: MediaQuery.of(context).size.width / 2,
          decoration: BoxDecoration(
            color: blueColor,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Center(
              child: Text('Order Delivered',
                  style: TextStyle(color: Colors.white))),
        ),
      )
    ]);
  }
}
