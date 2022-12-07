import 'package:flutter/material.dart';
import 'package:graduation_interface/Correction.dart';
import 'package:graduation_interface/Home.dart';
import 'package:graduation_interface/Profile.dart';
import 'package:graduation_interface/AboutUs.dart';

class MyMistakesList extends StatefulWidget {
  const MyMistakesList({super.key});

  @override
  State<MyMistakesList> createState() => _MyMistakesListState();
}

class _MyMistakesListState extends State<MyMistakesList> {
  List MyMistakes = [
    {"name": "images/ruku.png"},
    {"name": "images/sujud.png"},
    {"name": "images/tashahud.png"},
  ];
  // how to used element from this list ex: Text("${MyMistakes[i]["name"]}")
  @override
  Widget build(BuildContext context) {
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
                //First
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

                //#####################################################        her!!!!!!!!!!
                //Second
                Container(
                  height: 550,
                  margin: EdgeInsets.all(20),
                  alignment: Alignment.center,
                  child: ListView.builder(
                      itemCount: MyMistakes.length,
                      itemBuilder: (context, i) {
                        //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
                        return Container(
                          height: 150,
                          margin: EdgeInsets.only(top: 20),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              border: Border.all(
                                  color: Color.fromRGBO(53, 135, 142, 50),
                                  width: 2)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              /////////////////////////////////////////////////////////////////////////////
                              Image.asset(
                                "${MyMistakes[i]["name"]}",
                                width: 120,
                                height: 120,
                                fit: BoxFit.fill,
                              ),
                              /////////////////////////////////////////////////////////////////////////////
                              SizedBox(
                                width: 20,
                              ),
                              ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                    Color.fromARGB(206, 43, 109, 115),
                                  )),
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
                                        color:
                                            Color.fromARGB(230, 255, 255, 255),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("عرض التصحيح"),
                                    ],
                                  )),
                              /////////////////////////////////////////////////////////////////////////////
                              IconButton(
                                icon: Icon(
                                  Icons.delete,
                                  color: Color.fromARGB(206, 43, 109, 115),
                                ),
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                      content: Text(
                                        'هل ترغب بحذف هذا الخطأ ؟',
                                        textAlign: TextAlign.center,
                                      ),
                                      contentTextStyle: TextStyle(
                                        color: Color.fromRGBO(53, 135, 142, 50),
                                        fontSize: 16,
                                      ),
                                      backgroundColor: Colors.grey[300],
                                      actions: [
                                        MaterialButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: Text('تراجع',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            textColor: Color.fromARGB(
                                                255, 53, 135, 142)),
                                        MaterialButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const MyMistakesList()),
                                              );
                                            },
                                            child: Text('حذف',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            textColor: Color.fromARGB(
                                                255, 53, 135, 142)),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        );
                      }),
                ),
                //######################################################
              ],
            )),
      ),
    );
  }
}
