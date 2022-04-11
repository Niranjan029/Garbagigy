import 'package:flutter/material.dart';
class UserLoginPage extends StatelessWidget {
  const UserLoginPage({Key? key}) : super(key: key);

  static const String _title = 'Sample App';

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Colors.lightGreen[900],
        body: const UserStatefulWidget(),
      ),
    );
  }
}

class UserStatefulWidget extends StatefulWidget {
  const UserStatefulWidget({Key? key}) : super(key: key);

  @override
  State<UserStatefulWidget> createState() => _UserStatefulWidgetState();
}

class _UserStatefulWidgetState extends State<UserStatefulWidget> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController userpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              child: Image.asset('images/image4.jpeg'),
            ),
            Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Log in/Sign-up',
                  style: TextStyle(fontSize: 20,
                      color: Colors.white),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: usernameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Your Email / phone-no ',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: userpasswordController,
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
                  onPressed: () {
                    print(usernameController.text);
                    print(userpasswordController.text);
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('Sucess'),
                        content: const Text('Logged in succcesfully'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'OK'),
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    );
                    Navigator.pushNamed(context, "");
                  },
                )
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
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }
}