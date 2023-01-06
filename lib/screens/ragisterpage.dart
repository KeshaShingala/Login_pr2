import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_pr2/screens/Homepage.dart';
import 'package:login_pr2/screens/loginpage.dart';
import 'package:shared_preferences/shared_preferences.dart';


class ragisterpage extends StatefulWidget {
  const ragisterpage({Key? key}) : super(key: key);

  @override
  State<ragisterpage> createState() => _ragisterpageState();
}

class _ragisterpageState extends State<ragisterpage> {

  GlobalKey<FormState> key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: key,
          child: Column(
            children: [
              Image.asset("assets/images/plant-lover-lettering-quote-with-a-monstera-houseplant-in-pot-clipart-to-make-cards-wall-art-t-shirt-iron-on-bag-sublimation-print-design-planter-decoration-flat-illustration-vector-removebg-preview.png"),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    TextFormField(
                      validator: (val) {
                        if (val!.isEmpty) {
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
                        if (val!.isEmpty) {
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
                              "Sign Up",
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
                                builder: (context) => loginpage(),
                              ));
                        },
                        child: const Text("Already Have Account? Login"))
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
