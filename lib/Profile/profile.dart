

import 'package:flutter/material.dart';

import 'package:rtiggers/Profile/edit_email.dart';
import 'package:rtiggers/Profile/edit_name.dart';
import 'package:rtiggers/Profile/edit_phone_number.dart';
import 'package:rtiggers/Profile/notifications.dart';
import 'package:rtiggers/Profile/privacy_policy.dart';
import 'package:rtiggers/Profile/rate_us.dart';
import 'package:rtiggers/Profile/settings.dart';
import 'package:rtiggers/Profile/share.dart';

import '../colors.dart';
import 'contact_us.dart';


class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }

  getBody() {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Image.asset("assets/d.png",fit: BoxFit.fill,),
        ),
        Align(
          alignment: Alignment(0,-.6),
          
          child: Column(
            children: [
              SizedBox(height: 10.0,),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  width: 70.0,
                  height: 70.0,
                  child: new Image.asset('assets/ok.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text('Welcome to Rtiggers', style: TextStyle(color: Colors.white, fontSize: 17.0),),
              ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: MaterialButton(
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(10)
              //     ),
              //     color: brownColor,
              //     child: Text("Login",style: TextStyle(color: Colors.white),),
              //     onPressed: (){
              //       // AuthService().signOut();
              //     },

              //   ),
              // ),
            ],
          ),
        ),
        Align(
          alignment: Alignment(0,1),
          child: getList(),
        )
      ],
    );
  }

  getList() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height/1.5,
        child: ListView(
          children: [
            FlatButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => EditName()));
                
              },
              child: ListTile(
                leading: Image.asset("assets/1.png",height: 40,width: 40,),
                title: Text("Name"),
                trailing: Image.asset("assets/b.png",height: 40,width: 40,),
              ),
            ),
            FlatButton(
              onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context) => EditPhoneNumber()));
              },
              child: ListTile(
                leading: Image.asset("assets/2.png",height: 40,width: 40,),
                title: Text("Mobile Number"),
                trailing: Image.asset("assets/b.png",height: 40,width: 40,),
              ),
            ),
            FlatButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => EditEmail()));
              },
              child: ListTile(
                leading: Image.asset("assets/3.png",height: 40,width: 40,),
                title: Text("Email Id"),
                trailing: Image.asset("assets/b.png",height: 40,width: 40,),
              ),
            ),
            FlatButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Settings()));
              },
              child: ListTile(
                leading: Image.asset("assets/4.png",height: 40,width: 40,),
                title: Text("Settings"),
                trailing: Image.asset("assets/b.png",height: 40,width: 40,),
              ),
            ),
            FlatButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => RateUs()));
              },
              child: ListTile(
                leading: Image.asset("assets/5.png",height: 40,width: 40,),
                title: Text("Rate Us"),
                trailing: Image.asset("assets/b.png",height: 40,width: 40,),
              ),
            ),
            FlatButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Share()));
              },
              child: ListTile(
                leading: Image.asset("assets/6.png",height: 40,width: 40,),
                title: Text("Share your friends"),
                trailing: Image.asset("assets/b.png",height: 40,width: 40,),
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => PrivacyPolicy()));
              },
              child: ListTile(
                leading: Image.asset("assets/7.png",height: 40,width: 40,),
                title: Text("Privacy Policy"),
                trailing: Image.asset("assets/b.png",height: 40,width: 40,),
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Notifications()));
              },
              child: ListTile(
                leading: Image.asset("assets/8.png",height: 40,width: 40,),
                title: Text("Notifications"),
                trailing: Image.asset("assets/b.png",height: 40,width: 40,),
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ContactUs()));
              },
              child: ListTile(
                leading: Image.asset("assets/9.png",height: 40,width: 40,),
                title: Text("Contact Us"),
                trailing: Image.asset("assets/b.png",height: 40,width: 40,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
