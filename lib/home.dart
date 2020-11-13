import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: Alignment(0, -0.5),
            radius: 0.3,
            colors: [Colors.white, Colors.lime],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              buildlogo(),
              buildText(),
              buildTextFieldUser(),
              buildTextFieldPassword(),
              buildButtonLogin(),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'New Register',
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Container buildButtonLogin() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      width: 250,
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: Icon(Icons.cloud_upload),
        label: Text('Login'), //คือ Buttonที่มีพื้นหลัง,
      ),
    );
  }

//ขีดเส้นเต้นText
  Container buildTextFieldUser() => Container(
        margin: EdgeInsets.only(top: 20),
        width: 250,
        child: TextField(
          //ทำกรอปขีดเส้น หรือ TextBox
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.contact_mail),
            labelText: 'User',
            border: OutlineInputBorder(),
          ),
        ),
      );

  Container buildTextFieldPassword() => Container(
        margin: EdgeInsets.only(top: 20),
        width: 250,
        child: TextField(
          obscureText: true,
          //ทำกรอปขีดเส้น หรือ TextBox
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.lock),
            labelText: 'Password',
            border: OutlineInputBorder(),
          ),
        ),
      );

  Text buildText() => Text(
        'Tan Sountheast',
        style: GoogleFonts.montserrat(
            textStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w600, //ใส่ตัวหนา
          color: Colors.green[300], // ใส่สีฟ้อน
          fontStyle: FontStyle.italic, //ตัวเอียง italic
        )),
      );

//รูปภาพกลางแอฟ
  Container buildlogo() {
    return Container(
        margin: EdgeInsets.only(bottom: 20),
        width: 120, //Container = ลดทำให้ขนาดภาพ
        child: Image.asset('images/logo.png'));
  }
}
