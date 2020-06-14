import 'package:flutter/material.dart';
import 'package:onetimeintro/one_time_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OneTimeDecider extends StatefulWidget {
  static const String id = "/splashScreen";
  final String name;
  OneTimeDecider({this.name});
  @override
  _Splash createState() => _Splash();
}

class _Splash extends State<OneTimeDecider> {
  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _seen = (prefs.getBool('seen') ?? false);

    if (_seen) {
      Navigator.pushNamed(context, widget.name);
    } else {
      await prefs.setBool('seen', true);
      Navigator.pushNamed(context, OneTimeScreen.id);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(
          strokeWidth: 10,
          value: null,
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    checkFirstSeen();
  }
}
