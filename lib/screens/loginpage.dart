import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_pr2/screens/ragisterpage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Homepage.dart';


class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {

  GlobalKey<FormState> key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: key,
          child: Column(
            children: [
              Image.asset("assets/images/858821f26ec468aff94dbb938ffe30b3-removebg-preview.png"),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    TextFormField(
                      validator: (val) {
                        if (val!.isEmpty || val != "keshashingala04@gmail.com") {
                          return "Enter Email First...";
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                          hintText: "Enter Email",
                          suffixIcon: Icon(
                            CupertinoIcons.mail,
                          )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      validator: (val) {
                        if (val!.isEmpty || val != "kesha123") {
                          return "Enter Password First...";
                        }
                        return null;
                      },
                      obscureText: true,
                      decoration: const InputDecoration(
                          hintText: "Enter Password",
                          suffixIcon: Icon(
                            CupertinoIcons.lock,
                          )),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    InkWell(
                      onTap: () async {
                        if (key.currentState!.validate()) {
                          final prefs = await SharedPreferences.getInstance();
                          await prefs.setInt('isLogged', 1);
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Homepage(),
                              ));
                        }
                      },
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                            child: Text(
                              "Login",
                              style: TextStyle(fontSize: 18, color: Colors.white,fontWeight: FontWeight.w600),
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ragisterpage(),
                              ));
                        },
                        child: const Text("Don't Have Account? Signup"))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      backgroundColor: Colors.teal.shade50,
    );
  }
}
