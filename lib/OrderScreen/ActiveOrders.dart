
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Order #123"),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(padding:EdgeInsets.all(5),height: 30,width:60,color:brownColor,child: Center(child: Text("Pickup",style: TextStyle(color: Colors.white),)),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(padding:EdgeInsets.all(5),height: 30,width:60,color:brownColor,child: Center(child: Text("Delivery",style: TextStyle(color: Colors.white),)),),
                )
              ],
            ),

          ],
        ),
      ),
    );
  }
}
