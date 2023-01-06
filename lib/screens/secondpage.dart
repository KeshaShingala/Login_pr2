import 'package:flutter/material.dart';
import 'package:login_pr2/screens/loginpage.dart';
import 'package:login_pr2/screens/ragisterpage.dart';

class secondpage extends StatefulWidget {
  const secondpage({Key? key}) : super(key: key);

  @override
  State<secondpage> createState() => _secondpageState();
}

class _secondpageState extends State<secondpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 100,),
          Image.asset("assets/images/plant-lover-lettering-quote-with-a-monstera-houseplant-in-pot-clipart-to-make-cards-wall-art-t-shirt-iron-on-bag-sublimation-print-design-planter-decoration-flat-illustration-vector-removebg-preview.png"),
          SizedBox(height: 50,),
          InkWell(
            onTap: (){
              setState((){
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                    builder: (context) => const loginpage()));
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Container(
                alignment: Alignment.center,
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  border: Border.all(color: Colors.teal.shade400,width: 2),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Text("Log In",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              setState((){
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ragisterpage()));
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Container(
                alignment: Alignment.center,
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.teal,width: 2),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Text("Sing Up",style: TextStyle(color: Colors.teal,fontSize: 20,fontWeight: FontWeight.w600),),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.teal.shade50,
    );
  }
}
