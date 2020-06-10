import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import './login_page_buttons.dart';
import './constants/constants.dart';

class LoginPage extends StatelessWidget {
  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light, 
              child: GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
          children: <Widget>[
            Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF3B96FF),
                      Color(0xFF2E8FFF),
                      Color(0xFF1672DB),
                      Color(0xFF025BC2),
                      // Color(0xFF73AEF5),
                      // Color(0xFF61A4F1),
                      // Color(0xFF478DE0),
                      // Color(0xFF398AE5),
                    ],
                    stops: [0.1, 0.4, 0.7, 0.9],
                  ),
                ),
            ),
            Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 120.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Sign In',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      SizedBox(height: 30.0),
                      SigninButton('Sign in with joojle', '/third'),
                      
                    ]),
                ),
              ),
      ]))),
    );
  }
}
// class LoginPage extends StatefulWidget {
//  @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: AnnotatedRegion<SystemUiOverlayStyle>(
//         value: SystemUiOverlayStyle.light, 
//               child: GestureDetector(
//                 onTap: () => FocusScope.of(context).unfocus(),
//           child: Stack(
//           children: <Widget>[
//             Container(
//                 height: double.infinity,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                     begin: Alignment.topCenter,
//                     end: Alignment.bottomCenter,
//                     colors: [
//                       Color(0xFF3B96FF),
//                       Color(0xFF2E8FFF),
//                       Color(0xFF1672DB),
//                       Color(0xFF025BC2),
//                       // Color(0xFF73AEF5),
//                       // Color(0xFF61A4F1),
//                       // Color(0xFF478DE0),
//                       // Color(0xFF398AE5),
//                     ],
//                     stops: [0.1, 0.4, 0.7, 0.9],
//                   ),
//                 ),
//             ),
//             Container(
//                 height: double.infinity,
//                 child: SingleChildScrollView(
//                   physics: AlwaysScrollableScrollPhysics(),
//                   padding: EdgeInsets.symmetric(
//                     horizontal: 40.0,
//                     vertical: 120.0,
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: <Widget>[
//                       Text('Sign In',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 30.0,
//                         fontWeight: FontWeight.bold,
//                       ),
//                       ),
//                       SizedBox(height: 30.0),
//                       EmailText('Email:'),
//                       SizedBox(height: 20.0,),
//                       PasswordText('Password:'),
//                       ForgotPassword('Forgot Password?'),
//                       SizedBox(height: 1),
//                       Rememberme(),
//                       SizedBox(height: 1),
//                       LoginButton('LOGIN'),
//                       SignInWith(),
//                       LoginRow(),
//                       SizedBox(),
//                       SignUp(),
                      
//                     ]),
//                 ),
//               ),
//       ]))),
//     );
//   }

