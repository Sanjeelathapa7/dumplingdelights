// import 'package:flutter/material.dart';
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
//   FocusNode myFocusNode=new FocusNode();
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
//            body:Column(
//              children: [
//                SizedBox(height: 60),
//                Padding(
//                  padding: const EdgeInsets.only(top: 200,left: 20),
//                  // padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                  child: Container(
//                    decoration: BoxDecoration(
//                      color: Colors.white70,
//                      border: Border.all(color: Colors.grey),
//                      borderRadius: BorderRadius.circular(12),
//                    ),
//                    margin: EdgeInsets.all(25),
//                    child: TextFormField(
//                      controller: email,
//                      validator: (String? value) {
//                        if (value == null || value == "") {
//                          return "Email is required";
//                        }
//                        return null;
//                      },
//                      decoration: InputDecoration(
//                        hintText: "Enter an email",
//                        hintStyle: TextStyle(
//                          fontFamily: "arial",
//                          color: Colors.black,
//                        ),
//                        border: InputBorder.none,
//                        prefixIcon: Icon(Icons.mail,color: Colors.black,),
//                      ),
//                    ),
//                  ),
//                ),
//                Padding(
//                  padding: const EdgeInsets.only(left: 20),
//                  child: Container(
//                    child: Container(
//                      decoration: BoxDecoration(
//                        color: Colors.white70,
//                        border: Border.all(color: Colors.grey),
//                        borderRadius: BorderRadius.circular(12),
//                      ),
//                      margin: EdgeInsets.all(25),
//                      child: TextFormField(
//                        controller: password,
//                        validator: (String? value) {
//                          if (value == null || value == "") {
//                            return "Password field is required";
//                          }
//                          return null;
//                        },
//                        obscureText: hidePassword,
//                        decoration: InputDecoration(
//                            border: InputBorder.none,
//                            hintText: "Enter your password",
//                            hintStyle: TextStyle(
//                              color: Colors.black,
//
//                            ),
//                            prefixIcon: Icon(Icons.lock,color: Colors.black,),
//                            suffixIcon: !hidePassword
//                                ? InkWell(
//                                onTap: () {
//                                  setState(() {
//                                    hidePassword = !hidePassword;
//                                  });
//                                },
//                                child: Icon(Icons.visibility))
//                                : InkWell(
//                              onTap: () {
//                                setState(() {
//                                  hidePassword = !hidePassword;
//                                });
//                              },
//                              child: Icon(Icons.visibility_off,color: Colors.black,),
//                            )),
//                      ),
//                    ),
//                  ),
//                ),
//                ElevatedButton(
//
//                  style: ElevatedButton.styleFrom(primary: Colors.white70),
//                  onPressed: () {
//                    if (form.currentState!.validate()) {
//                      LoginScreen();
//                    } else {
//                      print("Fail");
//                    }
//                  },
//
//                  child: Text("Login",
//                    style: TextStyle(
//                      color: Colors.black,
//                    ),
//                  ),),
//                SizedBox(height: 10),
//
//
//                ElevatedButton(
//                  style: ElevatedButton.styleFrom(primary: Colors.white,
//                    backgroundColor: Colors.white70,
//
//                    // shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                    //   RoundedRectangleBorder(
//                    //     borderRadius: BorderRadius.circular(10),
//                    //   )
//                    // )
//                  ),
//
//                  onPressed: () {
//                    Navigator.of(context).pushReplacementNamed("/register");
//                  },
//                  child: Text("Signup Now",
//                    style: TextStyle(
//                      color: Colors.black,
//                    ),
//                  ),
//                )
//
//
//              ],
//            )
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