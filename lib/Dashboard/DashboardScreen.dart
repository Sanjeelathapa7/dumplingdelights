import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 25),
          child: Column(children: [
            Padding(padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){},
                    child: Icon(Icons.view_sidebar,
                      color: Colors.white,
                      size: 35,),
                  ),
                  InkWell(
                    onTap: (){},
                    child: Icon(Icons.search,
                      color: Colors.white,
                      size: 35,),
                  ),
                ],
              ),
            ),
          ],
          ),
        ),
      ),
    );
  }
}

