import 'package:flutter/material.dart';
import 'package:graduation_interface/Correction.dart';
import 'package:graduation_interface/Home.dart';
import 'package:graduation_interface/Profile.dart';
import 'package:graduation_interface/AboutUs.dart';

class ListOfMistake extends StatefulWidget {
  const ListOfMistake({Key? key}) : super(key: key);

  @override
  State<ListOfMistake> createState() => _ListOfMistakeState();
}

class _ListOfMistakeState extends State<ListOfMistake> {
  List MyMistakes = [
    {"name": "images/tashahud.png"},
    {"name": "images/sujud.png"},
    {"name": "images/ruku.png"},
  ];
  int selectedIndex = 0;
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
                BottomNavigationBarItem(
                    label: "الرئيسية ", icon: Icon(Icons.home)),
                BottomNavigationBarItem(
                    label: "صفحتي ", icon: Icon(Icons.person)),
                BottomNavigationBarItem(
                    label: "من نحن", icon: Icon(Icons.people)),
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
                        margin: EdgeInsets.only(top: 10),
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
                      height: 550,
                      margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
                      alignment: Alignment.center,
                      child: ListView.builder(
                        itemCount: MyMistakes.length,
                        itemBuilder: (context, i) {
                          return Container(
                            height: 150,
                            margin: EdgeInsets.only(top: 20),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                border: Border.all(
                                    color: Color.fromARGB(206, 43, 109, 115),
                                    width: 2)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "${MyMistakes[i]["name"]}",
                                  width: 120,
                                  height: 120,
                                  fit: BoxFit.fill,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Correction()),
                                        );
                                      },
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.tv,
                                            color: Colors.white,
                                          ),
                                          SizedBox(width: 10),
                                          Text("عرض التصحيح"),
                                        ],
                                      ),
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                        Color.fromARGB(206, 43, 109, 115),
                                      )),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.download,
                                            color: Colors.white,
                                          ),
                                          SizedBox(width: 10),
                                          Text("   حفظ الخطأ  "),
                                        ],
                                      ),
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                        Color.fromARGB(206, 43, 109, 115),
                                      )),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.backspace_outlined,
                                            color: Colors.white,
                                          ),
                                          SizedBox(width: 10),
                                          Text("  تجاهل الخطأ  "),
                                        ],
                                      ),
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                        Color.fromARGB(206, 43, 109, 115),
                                      )),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ))));
  }
}
