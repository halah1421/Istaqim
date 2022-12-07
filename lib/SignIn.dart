import 'package:flutter/material.dart';
import 'package:graduation_interface/AboutUs.dart';
import 'package:graduation_interface/Home.dart';
import 'package:graduation_interface/SignUp.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  SignInState createState() => SignInState();
}

class SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: 800,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("images/backpages.png"),
              fit: BoxFit.fill,
            )),
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    padding: EdgeInsets.only(top: 10),
                    alignment: Alignment.topRight,
                    child: InkWell(
                      child: Icon(
                        Icons.keyboard_arrow_right_rounded,
                        size: 60,
                        color: Color.fromARGB(206, 43, 109, 115),
                      ),
                      onTap: () {
                        Navigator.pop(context, false);
                      },
                    )),
                Center(
                    child: Image.asset(
                  "images/logo.png",
                  height: 200,
                  width: 200,
                )),
                Container(
                    padding: EdgeInsets.all(35),
                    child: Form(
                      child: Column(children: [
                        SizedBox(height: 20),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(
                              color: Color.fromARGB(206, 43, 109, 115),
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                          decoration: InputDecoration(
                            labelText: "البريد الإلكتروني",
                            labelStyle: TextStyle(
                                color: Color.fromRGBO(53, 135, 142, 50),
                                fontSize: 15),
                            prefixIcon: Icon(Icons.person,
                                color: Color.fromRGBO(53, 135, 142, 50)),
                            fillColor: Colors.grey[300],
                            filled: true,
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    width: 2,
                                    color: Color.fromRGBO(53, 135, 142, 50))),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(53, 135, 142, 50)),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          obscureText: true,
                          style: TextStyle(
                              color: Color.fromARGB(206, 43, 109, 115),
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                          decoration: InputDecoration(
                            labelText: "كلمة المرور",
                            labelStyle: TextStyle(
                                color: Color.fromRGBO(53, 135, 142, 50),
                                fontSize: 15),
                            prefixIcon: Icon(Icons.lock,
                                color: Color.fromRGBO(53, 135, 142, 50)),
                            fillColor: Colors.grey[300],
                            filled: true,
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    width: 2,
                                    color: Color.fromRGBO(53, 135, 142, 50))),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(53, 135, 142, 50)),
                            ),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(right: 10, top: 30),
                            child: InkWell(
                              child: Text(
                                '   هل نسيت كلمة المرور ؟  ',
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 13),
                              ),
                              onTap: () => showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Text(
                                    'لإرسال رابط إعادة تعيين كلمة المرور نرجو منك إدخال بريدك الإلكتروني',
                                    textAlign: TextAlign.center,
                                  ),
                                  titleTextStyle: TextStyle(
                                      color: Color.fromRGBO(53, 135, 142, 50),
                                      fontSize: 16),
                                  content: TextField(
                                    onChanged: (value) {
                                      setState(() {});
                                    },
                                    // controller: _textFieldController,
                                    decoration: InputDecoration(
                                        filled: true,
                                        enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 2,
                                                color: Color.fromRGBO(
                                                    53, 135, 142, 50))),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color.fromRGBO(
                                                  53, 135, 142, 50)),
                                        ),
                                        hintStyle: TextStyle(
                                            color: Colors.grey, fontSize: 12),
                                        hintText: "البريد الإلكتروني"),
                                  ),
                                  backgroundColor: Colors.grey[300],
                                  actions: [
                                    MaterialButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const AboutUs()),
                                          );
                                        },
                                        child: Text('إرسال',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold)),
                                        textColor:
                                            Color.fromARGB(255, 53, 135, 142)),
                                  ],
                                ),
                              ),
                            )),
                        SizedBox(height: 10),
                        MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Home()),
                            );
                          },
                          color: Color.fromARGB(206, 43, 109, 115),
                          child: Text('تسجيل الدخول',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                          textColor: Color.fromARGB(230, 255, 255, 255),
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          height: 40,
                          minWidth: 200.0,
                        ),
                        SizedBox(height: 40),
                        Container(
                          margin: EdgeInsets.only(right: 88, top: 30),
                          child: Row(
                            children: [
                              Text(
                                'ليس لديك حساب ؟',
                                style: TextStyle(
                                    color: Color.fromARGB(206, 43, 109, 115),
                                    fontSize: 13),
                              ),
                              InkWell(
                                child: Text(
                                  '  إنشاء حساب  ',
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 13),
                                ),
                                onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUp()),
                                ),
                              ),
                            ],
                          ),
                        )
                      ]),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
