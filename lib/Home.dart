import 'package:flutter/material.dart';
import 'package:graduation_interface/ListOfMistakes.dart';
import 'package:graduation_interface/Profile.dart';
import 'package:graduation_interface/AboutUs.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;

  void onItemTapped(int index) {
    if (index == 0) {
      Navigator.of(context)
          .push(new MaterialPageRoute(builder: (context) => new Profile()));
    }
    if (index == 1) {
      Navigator.of(context)
          .push(new MaterialPageRoute(builder: (context) => new Home()));
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
              child: Container(
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
                    IconButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                  backgroundColor: Colors.grey[300],
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(33)),
                                  title: Text(
                                    "التعليمات",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color:
                                            Color.fromARGB(206, 43, 109, 115)),
                                  ),
                                  actions: [
                                    Center(
                                      child: MaterialButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Text('حسناً',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold)),
                                          textColor: Color.fromARGB(
                                              255, 53, 135, 142)),
                                    ),
                                  ],
                                  content: Container(
                                    width: 110,
                                    height: 220,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "images/backpages.png"),
                                          fit: BoxFit.fill,
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                        border: Border.all(
                                            color: Color.fromARGB(
                                                206, 43, 109, 115),
                                            width: 2)),
                                    padding: EdgeInsets.all(5),
                                    child: Column(
                                      children: [
                                        Text(
                                          "أولا: يجب أن تكون زاوية تصوير الفيديو جانبية من اليمين أو اليسار",
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                              color: Color.fromARGB(
                                                  206, 43, 109, 115)),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                            "ثانياً: الرجاء عدم ترك مسافة كبيرة أثناء تصوير الفيديو للمحافظة على دقة اكتشاف الأخطاء ",
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                                color: Color.fromARGB(
                                                    206, 43, 109, 115))),
                                        SizedBox(height: 5),
                                        Text(
                                            "ثالثاً: الرجاء التحقق من وجود إضاءة كافية  ",
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                                color: Color.fromARGB(
                                                    206, 43, 109, 115))),
                                      ],
                                    ),
                                  ));
                            });
                      },
                      icon: Icon(Icons.info_outline),
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.only(top: 20, right: 288),
                      iconSize: 40,
                      color: Color.fromARGB(206, 43, 109, 115),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.only(top: 5, right: 160, left: 22),
                      child: Text("التعليمات",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(206, 43, 109, 115))),
                    ),
                    SizedBox(height: 100),
                    Container(
                      child: Column(
                        children: [
                          Text("مرحباً بك",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(206, 43, 109, 115))),
                          SizedBox(height: 18),
                          Text("فضلاً قم بتحميل الفيديو",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(206, 43, 109, 115))),
                          SizedBox(height: 20),
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ListOfMistake()),
                              );
                            },
                            icon: Icon(Icons.file_upload_rounded),
                            alignment: Alignment.center,
                            iconSize: 95,
                            color: Color.fromARGB(206, 43, 109, 115),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}
