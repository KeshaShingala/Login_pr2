
import 'package:flutter/material.dart';
import 'package:login_pr2/screens/loginpage.dart';
import 'package:login_pr2/screens/secondpage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../main.dart';
import 'Homepage.dart';


class Nextpage extends StatefulWidget {
  const Nextpage({Key? key}) : super(key: key);

  @override
  State<Nextpage> createState() => _NextpageState();
}

class _NextpageState extends State<Nextpage> {

  loginState() async {
    final prefs = await SharedPreferences.getInstance();

    isLogged = prefs.getInt('isLogged');
  }

  @override
  void initState() {
    super.initState();
    loginState();
    Future.delayed(const Duration(seconds: 2), () {
      isLogged == null || isLogged == 0
          ? Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const secondpage(),
          ))
          : Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const Homepage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
       color: Colors.blue,
        child:  Image.asset("assets/images/300x0w.jpg",fit: BoxFit.fill,),
      ),
    );
  }
}
