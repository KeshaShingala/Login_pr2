import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:login_pr2/screens/Nextpage.dart';
import 'package:shared_preferences/shared_preferences.dart';

int? isLogged = 0;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();

  isLogged = prefs.getInt('isLogged');

  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
          theme: ThemeData(
            useMaterial3: false,
          ),
          home: Nextpage(),
      )
  );
}