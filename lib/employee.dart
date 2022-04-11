import 'main.dart';
import 'package:flutter/material.dart';
class EmployeeFrontPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.lightGreen[900],
        body: Column(
          children: [
            Expanded(
              child: TextRow(),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'images/image1.jpeg',
                    width: 390.0,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: [
                      Text(
                        'Get All the details of Dustbin on',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        'Your Fingertips...',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        'Get details of the dustbin the location,',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Capacity ,How much is full',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            FlatButton(
                              onPressed:() {
                                Navigator.pushNamed(context, "EloginPage");
                              },

                              child: Text(
                                'Get Started',
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 25.0,
                                ),
                              ),
                              color: Colors.white,
                              padding: EdgeInsets.only(
                                  left: 65.0, right: 65.0, top: 5.0, bottom: 5.0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                            )
                          ],
                        ),
                      ),
                    ],

                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

