
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:firebase_core/firebase_core.dart';

Future<void> SignIn(var email,var password) async
{
  try {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email, password: password);
  }
  catch(e)
  {
     print(e);
  }

}
Future<void> SignUp(var email,var password) async
{
  try {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email, password: password);
  }
  catch(e)
  {
    print(e);
  }
}




