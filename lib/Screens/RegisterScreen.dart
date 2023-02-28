// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
//
// class RegisterScreen extends StatefulWidget {
//   const RegisterScreen({super.key});
//
//   @override
//   State<RegisterScreen> createState() => _RegisterScreenState();
// }
//
// class _RegisterScreenState extends State<RegisterScreen> {
//   TextEditingController email = new TextEditingController();
//   TextEditingController username = new TextEditingController();
//   TextEditingController password = new TextEditingController();
//   TextEditingController phoneno = new TextEditingController();
//   bool hidePassword = true;
//   final form = GlobalKey<FormState>();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Form(
//           key: form,
//           child: Column(
//             children: [
//               Image.asset(
//                 "images/a.jpg",
//                 height: 100,
//                 width: 100,
//               ),
//               Container(
//                 margin: EdgeInsets.all(10),
//                 child: TextFormField(
//                   controller: email,
//                   validator: (String? value) {
//                     if (value == null || value == "") {
//                       return "Email is required";
//                     }
//                     return null;
//                   },
//                   decoration: InputDecoration(
//                     hintText: "Enter an email",
//                     prefixIcon: Icon(Icons.mail),
//                   ),
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.all(10),
//                 child: TextFormField(
//                   controller: username,
//                   validator: (String? value) {
//                     if (value == null || value == "") {
//                       return "Username is required";
//                     }
//                     return null;
//                   },
//                   decoration: InputDecoration(
//                     hintText: "Enter username",
//                     prefixIcon: Icon(Icons.person),
//                   ),
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.all(10),
//                 child: TextFormField(
//                   controller: password,
//                   validator: (String? value) {
//                     if (value == null || value == "") {
//                       return "Password is required";
//                     }
//                     return null;
//                   },
//                   decoration: InputDecoration(
//                     hintText: "Enter your password",
//                     prefixIcon: Icon(Icons.lock),
//                   ),
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.all(10),
//                 child: TextFormField(
//                   controller: phoneno,
//                   validator: (String? value) {
//                     if (value == null || value == "") {
//                       return "Phone no is required";
//                     } else if(value.length!=10){
//                       return ("Not valid");
//                     }
//
//                     return null;
//                   },
//
//                   decoration: InputDecoration(
//                     hintText: "Enter your phone no",
//                     prefixIcon: Icon(Icons.call),
//                   ),
//                 ),
//               ),
//             ],
//           )),
//     );
//   }
// }