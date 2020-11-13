import 'package:flutter/material.dart';
import 'package:ungsoutheast/nomal_dialog.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String name, user, password;

  Container buildTextFieldName() => Container(
        margin: EdgeInsets.only(top: 20),
        width: 250,
        child: TextField(
          onChanged: (value) => name = value.trim(),
          //เก็บค่า name ไว้ที่ตัวValue

          //ทำกรอปขีดเส้น หรือ TextBox
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.people),
            labelText: 'Display Name',
            border: OutlineInputBorder(),
          ),
        ),
      );

  Container buildTextFieldUser() => Container(
        margin: EdgeInsets.only(top: 20),
        width: 250,
        child: TextField(
          onChanged: (value) => user = value.trim(),
          //เก็บค่า user ไว้ที่ตัวValue

          //ทำกรอปขีดเส้น หรือ TextBox
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.contact_mail),
            labelText: 'User',
            border: OutlineInputBorder(),
          ),
        ),
      );

  Container buildTextFieldpassword() => Container(
        margin: EdgeInsets.only(top: 20),
        width: 250,
        child: TextField(
          onChanged: (value) => password = value.trim(),
          //เก็บค่า password ไว้ที่ตัวValue

          //ทำกรอปขีดเส้น หรือ TextBox
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.lock),
            labelText: 'password',
            border: OutlineInputBorder(),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('name = $name, user = $user, password = $password');
          if (name == null ||
              name.isEmpty ||
              user == null ||
              user.isEmpty ||
              password == null ||
              password.isEmpty) {
            normalDialog(context, 'มีช่องว่าง ? กรุณากรอกทุกช่องคะ');
          } else {}
        }, //ทำ event เก็บค่าตัวแปลที่ต้องการ
        child: Icon(Icons.cloud_upload),
      ), //ทำปุ่มสีฟ้าข้างล่างขวา
      appBar: AppBar(
        title: Text('สมัครสมาชิก'),
      ), //TopBar
      body: Center(
        child: Column(
          children: [
            buildTextFieldName(),
            buildTextFieldUser(),
            buildTextFieldpassword()
          ],
        ),
      ),
    );
  }
}
