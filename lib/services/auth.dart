// import 'package:do_locks/models/user.dart';
// import 'package:do_locks/services/users.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:do_locks/provider/user.dart';
//
// class AuthService{
//
// //SIGN IN WITH EMAIL AND PASSWORD
//   Future signInWithEmailAndPassword(String email, String password) async {
//     try {
//       UserCredential result = await _auth.signInWithEmailAndPassword(
//         email: email,
//         password: password,);
//       User user = result.user;
//       return _userFromFirebaseUser(user);
//     }catch (e) {
//       print(e.toString());
//       return null;
//     }
//   }
//
// // REGISTER WITH EMAIL AND PASSWORD
//   Future registerWithEmailAndPassword(String email, String password) async {
//     try {
//       UserCredential result = await _auth.createUserWithEmailAndPassword(
//         email: email,
//         password: password,);
//       User user = result.user;
//
//       //creating a new doc for the user with uid
//       //await UserServices(uid: user.uid).updateUserData('0', 'new crew member', 100);
//       return _userFromFirebaseUser(user);
//     }catch (e) {
//       print(e.toString());
//       return null;
//     }
//   }
//
// //SIGN OUT
//   Future signOut() async {
//     try {
//       return await _auth.signOut();
//     } catch (e) {
//       print(e.toString());
//       return null;
//     }
//   }
// }
