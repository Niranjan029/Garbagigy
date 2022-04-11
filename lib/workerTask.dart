import 'package:flutter/material.dart';

class WorkerTaskPage extends StatelessWidget {
  const WorkerTaskPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.lightGreen[900],
        body: SafeArea(
          child: Container(
            width: double.infinity,
             child: Image.asset("images/image3.jpeg"),
      ),
        ),
      ),
    );
  }
}
