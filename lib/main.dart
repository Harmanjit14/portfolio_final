import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_new/MOBILE/mobile_holder.dart';
import 'package:portfolio_new/WEB/holder_web.dart';

void main() async{
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hi, Whats up?',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: Layout(),
    );
  }
}

class Layout extends StatelessWidget {
  const Layout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth >= 1000) {
          return WebHolder();
        } else {
          return Scaffold(
            body:MobileHolder(),
          );
        }
      },
    );
  }
}
