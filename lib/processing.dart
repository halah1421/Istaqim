import 'package:flutter/material.dart';

class process extends StatefulWidget {
  const process({Key? key}) : super(key: key);

  @override
  State<process> createState() => _processState();
}

class _processState extends State<process> {

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 40,
            backgroundColor: Color.fromARGB(206, 43, 109, 115),
          ),
          body: Container(
            width: double.infinity,
            height: 700,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/backpages.png"),
                  fit: BoxFit.fill,
                )
            ),
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 220, left: 33, right: 33),
              child: Column(
                children: [
                  Text("الرجاء الانتظار حتى تتم معالجة الفديو",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30,
                        color: Color.fromARGB(206, 43, 109, 115),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 40),
                  Image.asset("images/loading-gif.gif",
                    width: 90, height: 90,)
                ],
              ),
            ),
          ),
        )
    );
  }
}