import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:khalti_flutter/khalti_flutter.dart';

import 'Payment/KhaltiTest.dart';


void main() {
  runApp(const Myapp());
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom]);
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return KhaltiScope(
        publicKey: 'test_public_key_de5c0918e11b416caeeb0762c51e6aef',
        enabledDebugging: true,
        builder: (context, navKey) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: KhaltiPayment(),
              navigatorKey: navKey,
              localizationsDelegates: const [
                KhaltiLocalizations.delegate,
              ]);
        });
  }
}