import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart' ;
import 'package:garbagify/Userloginpage.dart' ;
import 'package:garbagify/employee.dart' ;
import 'package:garbagify/workerTask.dart' ;
import 'Register.dart' ;
import 'employee.dart' ;
import 'EmployeeLoginPage.dart' ;
import 'workerTask.dart' ;
import 'Userloginpage.dart' ;
import 'signuppage.dart' ;
import 'usertask.dart' ;
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(home: MyApp(),
    initialRoute: "home",
    routes: {
      "home": (BuildContext context) => MyApp(),
      "FirstPage":(BuildContext context)=>FrontPage(),
      "employeeloginPage":(BuildContext context)=>EmployeeFrontPage(),
      "EloginPage":(BuildContext context)=>EmployeeLoginPage(),
      "WorkertaskPage":(BuildContext context)=>WorkerTaskPage(),
      "Userloginpage":(BuildContext context)=>UserLoginPage(),
      "Usertaskpage":(BuildContext context)=>UserTask(),
      "signuppage":(BuildContext context)=>SignUpPage(),

    },
  ));
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
     //  FlatButtonText fb = FlatButtonText(fbname: 'Get Started', nextpage: 'FirstPage');
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.lightGreen[900],
        body: Column(
          children: [
            Expanded(
              child: TextRow(),
            ),
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'images/Map.png',
                    width: 390.0,
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: [
                      Text(
                        'Locate Your Nearest Dustbin!!!',
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
                        'Dont throw your garbage on street,',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        'find nearest dustbin in your area',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              FlatButton
                (
                onPressed: ()=> Navigator.pushNamed(context,"FirstPage"),

                child: Text("Get Started",
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

class TextRow extends StatelessWidget {
  const TextRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(44.0),
          child: Text(
            'Garbagify',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 1.0,
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
            ),
          ),
        ),
      ],
    );
  }
}

