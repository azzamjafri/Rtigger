import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rtiggers/colors.dart';

import 'ActiveOrders.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> with SingleTickerProviderStateMixin{
  TabController tabView;
  @override
  void initState() {
    tabView=TabController(length: 3,vsync: this,initialIndex: 1);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Welcome Name",style: TextStyle(color: blueColor),),
        elevation: 0,
        bottom: getTabBar(),
      ),
      body: getBody(),

    );
  }

  getTabBar() {
    return TabBar(
      indicator: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.blue[100]
      ),
      //indicatorColor: Colors.black,
      controller: tabView,
      tabs: [
        Tab(

          icon: getTabHeader("New Order"),
        ),
        Tab(
          icon: getTabHeader("Active Order"),
        ),
        Tab(
          icon: getTabHeader("Past Order"),
        )
      ],
    );
  }

  getBody() {
    return TabBarView(
      controller: tabView,
      children: [
        Text("1"),
        ActiveOrder(),
        Text("3"),
      ],
    );
  }

  getTabHeader(String field) {
    return Text(field,style: TextStyle(color: blueColor,fontWeight: FontWeight.bold,fontSize: 14),);
  }
}
