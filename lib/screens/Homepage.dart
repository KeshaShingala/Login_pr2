import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Image.asset("assets/images/love.png"),
            SizedBox(height: 30,),
                  Text("Welcome\n    Back",style: TextStyle(color: Colors.teal,fontWeight: FontWeight.w600,fontSize: 50),),
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(30)),
                      child: const Center(
                          child: Text(
                            "Login as Maria",
                            style: TextStyle(fontSize: 20, color: Colors.white,fontWeight: FontWeight.w600),
                          )),
                    ),
                  ),
                  Spacer(),
                  InkWell(
                      onTap: () async {
                        final prefs = await SharedPreferences.getInstance();
                        await prefs.remove('isLogged');
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Logout Sucessfully...")));
                      },
                      child: const Text("Delet accout ?")),
                  SizedBox(height: 40,),
          ],
        ),
      ),
      backgroundColor: Colors.teal.shade50,
    );
  }
}
