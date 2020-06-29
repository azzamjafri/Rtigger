import 'package:flutter/material.dart';
import 'package:rtiggers/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class ActiveOrderCashOnDelivery extends StatefulWidget {
  @override
  _ActiveOrderCashOnDeliveryState createState() =>
      _ActiveOrderCashOnDeliveryState();
}

class _ActiveOrderCashOnDeliveryState extends State<ActiveOrderCashOnDelivery> {
  String phoneNo = "7080855524";

  String status = '';
  bool received = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 1.4,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child:
                              Text("Order", style: TextStyle(fontSize: 18.0)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text("1 Order #123",
                              style: TextStyle(fontSize: 13.0)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text("OTP 7361",
                              style: TextStyle(
                                color: blueColor,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 40.0),
                          child: Text('Item 1'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 40.0),
                          child: Text('Amount'),
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.all(4.0)),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 40.0),
                          child: Text('Item 2'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 40.0),
                          child: Text('Amount'),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 35.0),
                        child: Container(
                          width: 67.0,
                          child: Divider(
                            color: blueColor,
                            thickness: 2.0,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(width: 67.0, child: Text('Total')),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Payment Mode : ',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Container(
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.blue[200],
                          ),
                          child: Text(
                            'Cash On Delivery',
                            style: TextStyle(
                                color: blueColor, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                    ),
                    Row(
                      children: [
                        Text(
                          'Cash to received : ',
                          style: TextStyle(fontSize: 17.0),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8.0),
                        ),
                        Container(
                          width: 100.0,
                          height: 30.0,
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: new OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide(width: 3.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide(width: 3.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            received = true;
                          });
                        },
                                              child: Container(
                          height: 32.0,
                          width: MediaQuery.of(context).size.width / 4,
                          decoration: BoxDecoration(
                            color: blueColor,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Center(
                              child: Text('Received',
                                  style: TextStyle(color: Colors.white))),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text(
                        'Deliver To :',
                        style: TextStyle(fontSize: 17.0),
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
                        GestureDetector(
                          onTap: () => makePhoneCall('tel:$phoneNo'),
                          child: Container(
                            child: Image.asset("assets/2.png"),
                            height: 35.0,
                            width: 35.0,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text(
                        'Any query contact :',
                        style: TextStyle(fontSize: 17.0),
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
                        GestureDetector(
                          onTap: () => makePhoneCall('tel:$phoneNo'),
                          child: Container(
                            child: Image.asset("assets/2.png"),
                            height: 35.0,
                            width: 35.0,
                          ),
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
          top: MediaQuery.of(context).size.height / 1.45,
          left: MediaQuery.of(context).size.width / 6,
          child: GestureDetector(
            onTap: () {
              // showDialog(context: context, builder: (context) => showStatus(context));
              showDialog(context);
            },
            child: Container(
              height: 35.0,
              width: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                color: blueColor,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Center(
                  child: Text('Order Delivered',
                      style: TextStyle(color: Colors.white))),
            ),
          ),
        )
      ]),
    );
  }

  showStatus(BuildContext context) {
    return Container(
      height: 250.0,
      width: 250.0,
      child: Text('$status'),
    );
  }

  void showDialog(BuildContext context) {
    showGeneralDialog(
      barrierLabel: "Barrier",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: Duration(milliseconds: 700),
      context: context,
      pageBuilder: (_, __, ___) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 200,
            child: SizedBox.expand(
                child: Material(
                    type: MaterialType.transparency,
                    child: Center(
                      child: Text(
                        received 
                            ? 'Order Received Successfully'
                            : 'Order not yet received',
                        style: TextStyle(color: brownColor, fontSize: 18.0),
                      ),
                    ))),
            margin: EdgeInsets.only(bottom: 50, left: 12, right: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
            ),
          ),
        );
      },
      transitionBuilder: (_, anim, __, child) {
        return SlideTransition(
          position: Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(anim),
          child: child,
        );
      },
    );
  }

  Future<void> makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
