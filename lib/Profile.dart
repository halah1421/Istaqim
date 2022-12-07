import 'package:flutter/material.dart';
import 'package:graduation_interface/Home.dart';
import 'package:graduation_interface/Profile.dart';
import 'package:graduation_interface/AboutUs.dart';
import 'package:graduation_interface/MyMistakesList.dart';
import 'package:graduation_interface/main.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int selectedIndex = 1;
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
    var $first_name = "خديجه";
    var $email = "kad2020@gmail.com";
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
        ////////////////////////////////////////////////////////////////////////
        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("images/backpages.png"),
              fit: BoxFit.fill,
            )),
            //the following code is for back icon button
            child: Column(
              children: [
                //first
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

                //#####################################################          her!!!!!!!!!!
                //second
                Container(
                  padding: EdgeInsets.only(top: 10),
                  alignment: Alignment.center,
                  child: Column(children: [
                    Icon(
                      Icons.account_circle,
                      size: 140,
                      color: Color.fromARGB(206, 43, 109, 115),
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 30)),
                    ///////////////////////////////////////////////////////////////////////////
                    Container(
                        padding: EdgeInsets.fromLTRB(105, 0, 105, 0),
                        decoration: BoxDecoration(
                            color: Color(0xFFEDF0F5),
                            border: Border(
                                bottom: BorderSide(
                                    color: Color.fromARGB(206, 43, 109, 115),
                                    width: 2))),
                        child: Text($first_name,
                            style: TextStyle(
                              color: Color.fromARGB(206, 43, 109, 115),
                              fontSize: 25,
                              fontFamily: "Lateef",
                            ))),
                    Padding(padding: EdgeInsets.only(bottom: 15)),
                    ////////////////////////////////////////////////////////////////////////////
                    Container(
                        padding: EdgeInsets.fromLTRB(45, 5, 45, 5),
                        decoration: BoxDecoration(
                            color: Color(0xFFEDF0F5),
                            border: Border(
                                bottom: BorderSide(
                                    color: Color.fromARGB(206, 43, 109, 115),
                                    width: 2))),
                        child: Text($email,
                            style: TextStyle(
                              color: Color.fromARGB(206, 43, 109, 115),
                              fontSize: 20,
                              fontFamily: "Verdana",
                            ))),
                    Padding(padding: EdgeInsets.only(bottom: 100)),
                    ////////////////////////////////////////////////////////////////////////////
                    MaterialButton(
                        child: Text("قائمة أخطائي",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        textColor: Color.fromARGB(230, 255, 255, 255),
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        height: 40,
                        minWidth: 200.0,
                        color: Color.fromARGB(206, 43, 109, 115),
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return MyMistakesList();
                          }));
                        }),
                    Padding(padding: EdgeInsets.only(bottom: 10)),
                    ////////////////////////////////////////////////////////////////////////////
                    MaterialButton(
                        child: Text("تسجيل خروج",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        textColor: Color.fromARGB(230, 255, 255, 255),
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        height: 40,
                        minWidth: 200.0,
                        color: Color.fromARGB(206, 43, 109, 115),
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return WelcomePage();
                          }));
                        }),
                  ]),
                )
              ],
            )),
      ),
    );
  }
}
