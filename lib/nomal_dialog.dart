import 'package:flutter/material.dart';

//จะต้องเชื่อมต่อ ชื่อ และจบด้วย async{}
Future<Null> normalDialog(BuildContext context, String string) async {
  showDialog(
    context: context,
    builder: (context) => SimpleDialog(
      title: Text(string),
      children: [
        TextButton(onPressed: () => Navigator.pop(context), child: Text('OK'))
      ], //เพิ่มปุ่ม OK ในMassageBox
    ),
  );
}
