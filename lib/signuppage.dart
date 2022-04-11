
import 'package:flutter/material.dart';
import 'auth.dart';
import 'main.dart';
class SignUpPage extends StatelessWidget {
 //const SignUpPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: MyList()
      ),
    );
  }
}
class MyList extends StatefulWidget {
  const MyList({Key? key}) : super(key: key);

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  TextEditingController useremail = TextEditingController();
  TextEditingController userpassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(25.0, 15.0, 0, 0),
          child: Text(
            'Sign-Up',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24.0,
              color: Colors.lightGreen[900],
            ),
          ),
        ),
        SizedBox(
          height: 40.0,
        ),
        Container(
          padding: EdgeInsets.only(left: 22.0),
          child: Text(
            'E-mail',style: TextStyle(
              fontSize: 30.0,
              color: Colors.lightGreen[900]
          ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          padding: EdgeInsets.only(left: 20.0, right: 20.0),
          child: TextField(
            controller: useremail,
            textAlign: TextAlign.center,
            decoration: const InputDecoration(
                labelText: 'Enter Your Email',
                border: OutlineInputBorder(),
                labelStyle: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w300,
                )
            ),
            keyboardType: TextInputType.emailAddress,
          ),
        ),
        SizedBox(
          height: 40.0,
        ),
        Container(
          padding: EdgeInsets.only(left: 22.0),
          child: Text(
            'Password',style: TextStyle(
              fontSize: 30.0,
              color: Colors.lightGreen[900]
          ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          padding: EdgeInsets.only(left: 20.0, right: 20.0),
          child: TextField(
            obscureText: true,
            controller: userpassword,
            textAlign: TextAlign.center,
            decoration: const InputDecoration(
                labelText: 'Enter Your Password',
                border: OutlineInputBorder(),
                labelStyle: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w300,
                )
            ),
          ),
        ),
        SizedBox(
          height: 40.0,
        ),
        Container(
          padding: EdgeInsets.only(left: 22.0),
          child: Text(
            'Confirm Password',style: TextStyle(
              fontSize: 30.0,
              color: Colors.lightGreen[900]
          ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          padding: EdgeInsets.only(left: 20.0, right: 20.0),
          child: TextField(
            obscureText: false,
            controller: userpassword,
            textAlign: TextAlign.center,
            decoration: const InputDecoration(
                labelText: 'Confirm Your Password',
                border: OutlineInputBorder(),
                labelStyle: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w300,
                )
            ),
          ),
        ),
        SizedBox(
          height: 40.0,
        ),
        Container(
          padding: EdgeInsets.only(left: 80.0,right: 80.0),
           child: ElevatedButton(
             child: Text('Register',style: TextStyle(
                 fontSize: 20.0,
                  fontWeight: FontWeight.w400
             ),),
             onPressed: () async{
                 await SignUp(useremail.text,userpassword.text);
                    Navigator.pushNamed(context, 'WorkertaskPage');
            },
            ),
        )
      ],
    );
  }
}
