import 'package:flutter/material.dart';
import 'package:graduation_interface/ListOfMistakes.dart';
import 'package:graduation_interface/SignUp.dart';
import 'package:graduation_interface/SignIn.dart';
import 'package:graduation_interface/processing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Istaqim',
      home: WelcomePage(),
    );
  }
}

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  WelcomePageState createState() => WelcomePageState();
}

class WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("images/backgroundWelcomePage.png"),
          fit: BoxFit.fill,
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MaterialButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return SignUp();
                }));
              },
              color: Color.fromARGB(230, 255, 255, 255),
              child: Text('إنشاء حساب',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              textColor: Color.fromARGB(255, 53, 135, 142),
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              height: 30,
              minWidth: 190.0,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return SignIn();
                }));
              },
              color: Color.fromARGB(230, 255, 255, 255),
              child: Text('تسجيل دخول',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              textColor: Color.fromARGB(255, 53, 135, 142),
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              height: 30,
              minWidth: 190.0,
            ),
            SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}
