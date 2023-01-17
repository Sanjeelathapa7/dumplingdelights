// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
//
// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});
//
//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }
//
// class _LoginScreenState extends State<LoginScreen> {
//   TextEditingController email = new TextEditingController();
//   TextEditingController password = new TextEditingController();
//   bool hidePassword = true;
//   final form = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage("images/l.jpeg"),fit: BoxFit.cover,
//           )
//       ),
//          child:Scaffold(
//            backgroundColor: Colors.transparent,
//
//
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                 child: Container(
//                   decoration: BoxDecoration(
//                     color: Colors.grey[200],
//                     border: Border.all(color: Colors.white),
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   margin: EdgeInsets.all(25),
//                   child: TextFormField(
//                     controller: email,
//                     validator: (String? value) {
//                       if (value == null || value == "") {
//                         return "Email is required";
//                       }
//                       return null;
//                     },
//                     decoration: InputDecoration(
//                       hintText: "Enter an email",
//                       border: InputBorder.none,
//                       prefixIcon: Icon(Icons.mail),
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                 child: Container(
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: Colors.grey[200],
//                       border: Border.all(color: Colors.white),
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                   margin: EdgeInsets.all(25),
//                   child: TextFormField(
//                     controller: password,
//                     validator: (String? value) {
//                       if (value == null || value == "") {
//                         return "Password field is required";
//                       }
//                       return null;
//                     },
//                     obscureText: hidePassword,
//                     decoration: InputDecoration(
//                         border: InputBorder.none,
//                         hintText: "Enter your password",
//                         prefixIcon: Icon(Icons.lock),
//                         suffixIcon: !hidePassword
//                             ? InkWell(
//                             onTap: () {
//                               setState(() {
//                                 hidePassword = !hidePassword;
//                               });
//                             },
//                             child: Icon(Icons.visibility))
//                             : InkWell(
//                           onTap: () {
//                             setState(() {
//                               hidePassword = !hidePassword;
//                             });
//                           },
//                           child: Icon(Icons.visibility_off),
//                         )),
//                   ),
//                 ),
//                 ),
//               ),
//
//
//                   ElevatedButton(
//                     style: ElevatedButton.styleFrom(primary: Colors.white),
//                     onPressed: () {
//                       if (form.currentState!.validate()) {
//                         LoginScreen();
//                       } else {
//                         print("Fail");
//                       }
//                     },
//
//                     child: Text("Login",
//                     style: TextStyle(
//                       color: Colors.black,
//                     ),
//                     ),),
//                 SizedBox(height: 10),
//
//
//                 ElevatedButton(
//                   style: ElevatedButton.styleFrom(primary: Colors.white),
//                   onPressed: () {
//                     Navigator.of(context).pushReplacementNamed("/register");
//                   },
//                   child: Text("Signup Now",
//                     style: TextStyle(
//                     color: Colors.black,
//                   ),
//                   ),
//                 )
//
//
//               ],
//
//           ),
//          );
//   //   ]
//   //   )
//   //         ),
//   // ),
//   //
//   //       );
//   }
// }