import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  bool hidePassword = true;
  final form = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
          key: form,
          child: Column(
            children: [
              Text("Dumpling Delights"),
              Image.asset(
                "images/a.jpg",
                height: 200,
                width: 100,
              ),
              Container(
                margin: EdgeInsets.all(25),
                child: TextFormField(
                  controller: email,
                  validator: (String? value) {
                    if (value == null || value == "") {
                      return "Email is required";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: "Enter an email",
                    prefixIcon: Icon(Icons.mail),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: TextFormField(
                  controller: password,
                  validator: (String? value) {
                    if (value == null || value == "") {
                      return "Password field is required";
                    }
                    return null;
                  },
                  obscureText: hidePassword,
                  decoration: InputDecoration(
                      hintText: "Enter your password",
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: !hidePassword
                          ? InkWell(
                          onTap: () {
                            setState(() {
                              hidePassword = !hidePassword;
                            });
                          },
                          child: Icon(Icons.visibility))
                          : InkWell(
                        onTap: () {
                          setState(() {
                            hidePassword = !hidePassword;
                          });
                        },
                        child: Icon(Icons.visibility_off),
                      )),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    if (form.currentState!.validate()) {
                      LoginScreen();
                    } else {
                      print("Fail");
                    }
                  },
                  child: Text("Login")),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed("/register");
                },
                child: Text("Signup Now"),
              )
            ],
          ),
        ));
  }
}