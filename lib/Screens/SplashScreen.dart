import 'package:dumplingdelights/imagestrings.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    // _navigatetohome();
  }

  // _navigatetohome() async{
  //   await Future.delayed(Duration(milliseconds: 15000),(){});
  //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MyHomePage(title:'GFG')));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Column(
          children: [
            Container(
        height:480,
        width:100,
              child: Image(image: AssetImage(tMomoImages),fit: BoxFit.cover,),

            ),
       Container(
          child: Text(
            "Dumpling Delights", style: TextStyle(
              fontFamily: "Times New Roman",fontSize: 25,fontWeight: FontWeight.w500),

          ),

         // decoration: BoxDecoration(
         //     image: DecorationImage(image: AssetImage("images/download.jpeg"))
         // ),

       ),
   ] )

    ),
    );

  }
}

