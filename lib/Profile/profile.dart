

import 'package:flutter/material.dart';
import 'package:rtiggers/Authentication/authentication.dart';

import '../colors.dart';


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
          
          child: MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            ),
            color: brownColor,
            child: Text("Login",style: TextStyle(color: Colors.white),),
            onPressed: (){
              AuthService().signOut();
            },

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
                
              },
              child: ListTile(
                leading: Image.asset("assets/1.png",height: 40,width: 40,),
                title: Text("Name"),
                trailing: Image.asset("assets/b.png",height: 40,width: 40,),
              ),
            ),
            FlatButton(
              onPressed: (){
               
              },
              child: ListTile(
                leading: Image.asset("assets/2.png",height: 40,width: 40,),
                title: Text("Mobile Number"),
                trailing: Image.asset("assets/b.png",height: 40,width: 40,),
              ),
            ),
            FlatButton(
              onPressed: (){
                
              },
              child: ListTile(
                leading: Image.asset("assets/3.png",height: 40,width: 40,),
                title: Text("Email Id"),
                trailing: Image.asset("assets/b.png",height: 40,width: 40,),
              ),
            ),
            FlatButton(
              onPressed: (){
                
              },
              child: ListTile(
                leading: Image.asset("assets/4.png",height: 40,width: 40,),
                title: Text("Settings"),
                trailing: Image.asset("assets/b.png",height: 40,width: 40,),
              ),
            ),
            FlatButton(
              onPressed: (){
                
              },
              child: ListTile(
                leading: Image.asset("assets/5.png",height: 40,width: 40,),
                title: Text("Rate Us"),
                trailing: Image.asset("assets/b.png",height: 40,width: 40,),
              ),
            ),
            FlatButton(
              onPressed: (){
                
              },
              child: ListTile(
                leading: Image.asset("assets/6.png",height: 40,width: 40,),
                title: Text("Share your friends"),
                trailing: Image.asset("assets/b.png",height: 40,width: 40,),
              ),
            ),
            FlatButton(
              onPressed: () {
                
              },
              child: ListTile(
                leading: Image.asset("assets/7.png",height: 40,width: 40,),
                title: Text("Privacy Policy"),
                trailing: Image.asset("assets/b.png",height: 40,width: 40,),
              ),
            ),
            FlatButton(
              onPressed: () {
                
              },
              child: ListTile(
                leading: Image.asset("assets/8.png",height: 40,width: 40,),
                title: Text("Notifications"),
                trailing: Image.asset("assets/b.png",height: 40,width: 40,),
              ),
            ),
            FlatButton(
              onPressed: () {
                
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
