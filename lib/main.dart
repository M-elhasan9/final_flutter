import 'package:final_project/ui/new_report/new_report_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'onboarding.dart';

String? token;

Map<String, dynamic>? user;

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool seen = prefs.getBool('seen') ?? false;

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(Start(seen));
}

class Start extends StatelessWidget {
  final bool seen;

  const Start(this.seen, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: FCMLlistiner (child:  Builder(
        builder: (context) {
          if (!seen) {
            return OnBoarding();
          } else {
            return NewReportScreen();
          }
        },
      ) ,),
    );
  }
}
