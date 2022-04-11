import 'package:flutter/material.dart';
class UserTask extends StatelessWidget {
  const UserTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Container(
      width: double.infinity,
      child: Image.asset("images/image5.jpeg"),
    ));
  }
}
