import 'package:flutter/material.dart';
import 'package:graduation_interface/Home.dart';
import 'package:graduation_interface/Profile.dart';
import 'package:graduation_interface/AboutUs.dart';
import 'package:video_player/video_player.dart';

class Correction extends StatefulWidget {
  const Correction({super.key});

  @override
  State<Correction> createState() => _CorrectionState();
}

class _CorrectionState extends State<Correction> {
  late VideoPlayerController controller;
  bool isPlay = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = VideoPlayerController.asset("videos/try.mp4")
      ..initialize().then((value) {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 1;
    void onItemTapped(int index) {
      if (index == 2) {
        Navigator.of(context)
            .push(new MaterialPageRoute(builder: (context) => new Home()));
      }
      if (index == 1) {
        Navigator.of(context)
            .push(new MaterialPageRoute(builder: (context) => new Profile()));
      }
      if (index == 0) {
        Navigator.of(context)
            .push(new MaterialPageRoute(builder: (context) => new AboutUs()));
      }
    }

    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        /*appBar: AppBar(
          toolbarHeight: 40,
          backgroundColor: Color.fromARGB(206, 43, 109, 115),
        ),*/
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromARGB(206, 43, 109, 115),
          selectedItemColor: Color.fromARGB(255, 255, 255, 255),
          unselectedItemColor: Color.fromARGB(130, 248, 248, 248),
          items: [
            BottomNavigationBarItem(label: "من نحن", icon: Icon(Icons.people)),
            BottomNavigationBarItem(label: "صفحتي ", icon: Icon(Icons.person)),
            BottomNavigationBarItem(label: "الرئيسية ", icon: Icon(Icons.home)),
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
                //padding: EdgeInsets.only(top: 40),
                margin: EdgeInsets.fromLTRB(20, 50, 20, 20),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Container(
                      child: Text(
                        'لديك خطأ في أداء الركوع\nعن أبو حميد الساعدي رضي الله عنه أن رسول الله صلى الله عليه وسلم كان اذا ركع أمكن يديه من ركبتيه ثم هصر ظهره\n[صحيح البخاري]',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromARGB(206, 43, 109, 115),
                            fontSize: 16,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                    ////////////////////////////////////////////////////////////////////////////////////////////
                    Container(
                      height: 345,
                      width: 450,
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(53, 135, 142, 50),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(
                            color: Color.fromARGB(206, 43, 109, 115),
                            width: 2,
                          )),
                      //color: Color.fromARGB(206, 43, 109, 115),
                      child: Column(
                        children: [
                          Padding(padding: EdgeInsets.only(top: 10)),
                          Text("فيديو توضيحي للطريقة الصحيحة للركوع",
                              style: TextStyle(
                                color: Color(0xFFEDF0F5),
                                fontSize: 16,
                                fontFamily: "Lateef",
                              )),
                          Padding(padding: EdgeInsets.only(top: 10)),
                          //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                          Container(
                              height: 285,
                              width: 400,
                              //color: Colors.amber,
                              child: Column(
                                children: [
                                  Center(
                                    child: controller.value.isInitialized
                                        ? AspectRatio(
                                            child: VideoPlayer(controller),
                                            aspectRatio:
                                                controller.value.aspectRatio,
                                          )
                                        : Container(),
                                  ),
                                  VideoProgressIndicator(
                                    controller,
                                    allowScrubbing: true,
                                  ),
                                  Padding(
                                      padding:
                                          EdgeInsets.only(bottom: 5, top: 5)),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                            Color.fromARGB(206, 43, 109, 115),
                                          )),
                                          onPressed: () async {
                                            Duration? d =
                                                await controller.position;
                                            var value =
                                                d! - Duration(seconds: 10);
                                            controller.seekTo(value);
                                          },
                                          child: Text("<<")),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      ////////////////////////////
                                      ElevatedButton(
                                        child: IconButton(
                                          icon: isPlay
                                              ? Icon(Icons.play_arrow_rounded)
                                              : Icon(Icons.pause),
                                          onPressed: () {
                                            setState(() {
                                              isPlay
                                                  ? controller.play()
                                                  : controller.pause();
                                              isPlay = !isPlay;
                                            });
                                          },
                                        ),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                          Color.fromARGB(206, 43, 109, 115),
                                        )),
                                        onPressed: () {},
                                      ),
                                      /////////////////////////////
                                      /*
                                          ElevatedButton(
                                              style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                Color.fromARGB(
                                                    206, 43, 109, 115),
                                              )),
                                              onPressed: () {
                                                controller.play();
                                              },
                                              child: Icon(
                                                  Icons.play_arrow_rounded)),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          ElevatedButton(
                                              style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                Color.fromARGB(
                                                    206, 43, 109, 115),
                                              )),
                                              onPressed: () {
                                                controller.pause();
                                              },
                                              child: Icon(Icons.pause)),
                                              */
                                      SizedBox(
                                        width: 5,
                                      ),
                                      ElevatedButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                            Color.fromARGB(206, 43, 109, 115),
                                          )),
                                          onPressed: () async {
                                            Duration? d =
                                                await controller.position;
                                            var value =
                                                d! + Duration(seconds: 10);
                                            controller.seekTo(value);
                                          },
                                          child: Text(">>")),
                                    ],
                                  )
                                ],
                              )),
                          //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 15)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MaterialButton(
                            child: Text("رجوع",
                                style: TextStyle(
                                  color: Color.fromARGB(230, 255, 255, 255),
                                  fontSize: 16,
                                )),
                            color: Color.fromARGB(206, 43, 109, 115),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            elevation: 10,
                            onPressed: () {
                              Navigator.of(context).pop();
                            }),
                        SizedBox(
                          width: 25,
                        ),
                        MaterialButton(
                            child: Text("حفظ ",
                                style: TextStyle(
                                  color: Color.fromARGB(230, 255, 255, 255),
                                  fontSize: 16,
                                )),
                            color: Color.fromARGB(206, 43, 109, 115),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            elevation: 10,
                            onPressed: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return Correction();
                              }));
                            }),
                      ],
                    )
                  ],
                ),
              ),
              //######################################################
            ],
          ),
        ),
      ),
    );
  }
}
