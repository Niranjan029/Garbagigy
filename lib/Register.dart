import 'package:flutter/material.dart';
import 'main.dart';
import 'employee.dart';
class FrontPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.lightGreen[900],
        body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Expanded(child: TextRow()),
            Expanded(child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'images/user.jpeg',
                  width: 390.0,
                )
              ],
            )
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    onPressed:() {
                      Navigator.pushNamed(context, 'Userloginpage');
                    },

                    child: Text(
                      'USER',
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
            SizedBox(
              height: 10.0,
            ),

            Expanded(child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'images/worker.jpeg',
                  width: 390.0,
                )
              ],
            )
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    onPressed:() {
                      Navigator.pushNamed(context, "employeeloginPage");
                    },

                    child: Text(
                      'EMPLOYEE',
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
      ),
    );
  }
}

