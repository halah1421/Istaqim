import 'package:flutter/material.dart';
import 'package:graduation_interface/Home.dart';
import 'package:graduation_interface/Profile.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  int selectedIndex = 2;
  void onItemTapped(int index) {
    if (index == 0) {
      Navigator.of(context)
          .push(new MaterialPageRoute(builder: (context) => new Home()));
    }
    if (index == 1) {
      Navigator.of(context)
          .push(new MaterialPageRoute(builder: (context) => new Profile()));
    }
    if (index == 2) {
      Navigator.of(context)
          .push(new MaterialPageRoute(builder: (context) => new AboutUs()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromARGB(206, 43, 109, 115),
          selectedItemColor: Color.fromARGB(255, 255, 255, 255),
          unselectedItemColor: Color.fromARGB(130, 248, 248, 248),
          items: [
            BottomNavigationBarItem(label: "الرئيسية ", icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: "صفحتي ", icon: Icon(Icons.person)),
            BottomNavigationBarItem(label: "من نحن", icon: Icon(Icons.people)),
          ],
          onTap: onItemTapped,
          currentIndex: selectedIndex,
        ),
        body: Container(
          width: double.infinity,
          height: 700,
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
              Container(
                margin: EdgeInsets.only(right: 20, top: 30),
                child: Column(
                  children: [
                    Row(children: [
                      Text(
                        "من نحن ",
                        style: TextStyle(
                            color: Color.fromARGB(206, 43, 109, 115),
                            fontSize: 27,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.question_answer_outlined,
                          color: Color.fromARGB(206, 43, 109, 115), size: 30)
                    ]),
                    SizedBox(height: 18),
                    Text(
                      "تطبيق استقم هو رفيقك لتصحيح صلاتك، يُمكنك التطبيق من إكتشاف اخطائك في الصلاة وتصحيحها عن طريق تقديم فيديوهات للطريقة الصحيحة لأداء الموضع.  ",
                      style: TextStyle(
                          color: Color.fromARGB(206, 43, 109, 115),
                          fontSize: 15,
                          fontWeight: FontWeight.w300),
                    ),
                    SizedBox(height: 50),
                    Text(
                      "فريق استقم :  ",
                      style: TextStyle(
                          color: Color.fromARGB(206, 43, 109, 115),
                          fontSize: 27,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          "images/programmer.png",
                          height: 30,
                          width: 30,
                        ),
                        Image.asset(
                          "images/programmer.png",
                          height: 30,
                          width: 30,
                        ),
                        Image.asset(
                          "images/programmer.png",
                          height: 30,
                          width: 30,
                        ),
                        Image.asset(
                          "images/programmer.png",
                          height: 30,
                          width: 30,
                        ),
                        Image.asset(
                          "images/programmer.png",
                          height: 30,
                          width: 30,
                        )
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "هدى عزيز",
                          style: TextStyle(
                              color: Color.fromARGB(206, 43, 109, 115),
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "رهف الغريبي",
                          style: TextStyle(
                              color: Color.fromARGB(206, 43, 109, 115),
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "بدرية القرني",
                          style: TextStyle(
                              color: Color.fromARGB(206, 43, 109, 115),
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "هالة قصاص",
                          style: TextStyle(
                              color: Color.fromARGB(206, 43, 109, 115),
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "خديجه الغنام",
                          style: TextStyle(
                              color: Color.fromARGB(206, 43, 109, 115),
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 120),
                    Text(
                      "يمكنكم التواصل معنا على :   ",
                      style: TextStyle(
                          color: Color.fromARGB(206, 43, 109, 115),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Image.asset(
                      "images/contact.png",
                      height: 50,
                      width: 120,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
