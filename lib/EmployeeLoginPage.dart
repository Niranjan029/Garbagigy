import 'package:flutter/material.dart';
import 'main.dart';
import 'auth.dart';
import 'signuppage.dart';
import 'package:firebase_auth/firebase_auth.dart';
class EmployeeLoginPage extends StatelessWidget {
  const EmployeeLoginPage({Key? key}) : super(key: key);

  static const String _title = 'Sample App';

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
          backgroundColor: Colors.lightGreen[900],
          body: const MyStatefulWidget(),
        ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController() ;
  TextEditingController passwordController = TextEditingController() ;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[

            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Garbagify',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 30),
                )),
            Container(
              child: Image.asset('images/image2.jpeg'),
            ),
            Container(
                alignment: Alignment.centerLeft,
                padding:  EdgeInsets.all(10),
                child:  Text(
                  'Log in/Sign-up',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20,
                  color: Colors.white),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
               // textAlign: TextAlign.center,
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Your Email ',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Your Password',
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text('Forgot Password',style: TextStyle(color: Colors.black),),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),

                child: ElevatedButton (

                  child: const Text('Login',style: TextStyle(color: Colors.black),),
                  onPressed: () async{
                   SignIn(nameController.text, passwordController.text);
                   User? user =  FirebaseAuth.instance.currentUser ;
                   if(user!=null && !user.emailVerified) {
                  await   Navigator.pushNamed(context, "WorkertaskPage");
                   }
                   else{
                     print('invalid data');
                   }
                  }
            ),
            ),
            Row(
              children: <Widget>[
                const Text('Does not have account?',style: TextStyle(
                color: Colors.black),),
                TextButton(
                  child: const Text(
                    'Sign up',
                    style: TextStyle(fontSize: 20,
                    color: Colors.black),
                  ),
                  onPressed: () {
                    //signup screen
                    Navigator.pushNamed(context, "signuppage");
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        )
    );
  }
}