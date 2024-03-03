import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4B3EAE),
      appBar: AppBar(
        leading: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
        backgroundColor: Colors.transparent,
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarColor: Colors.transparent),
        elevation: 0,
        centerTitle: true,
        title: Column(
          children: [
            Text(
              "Today's Weather",
              style: TextStyle(
                  color: Color(0xffF5F5F5),
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  fontFamily: "Nunito Sans"),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              "Sunday, 8 March 2021",
              style: TextStyle(
                  color: Color(0xffF5F5F5),
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Nunito Sans"),
            ),
          ],
        ),
      ),
      body: ListView(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              width: 315,
              height: 165,
              decoration: BoxDecoration(
                color: Colors.white30,
                borderRadius: BorderRadius.circular(40),
                border: Border.all(width: 2, color: Color(0xffFFFFFF)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  bottom: 20,
                  left: 20,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      "img/Moon cloud fast wind.png",
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "23º",
                          style: TextStyle(
                              fontFamily: "Nunito Sans",
                              fontWeight: FontWeight.w700,
                              fontSize: 70,
                              color: Color(0xffF5F5F5)),
                        ),
                        Text(
                          "Moon Cloud Fast Wind",
                          style: TextStyle(
                              fontFamily: "Nunito Sans",
                              fontWeight: FontWeight.w900,
                              fontSize: 12,
                              color: Color(0xffF5F5F5)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Stack(children: [
              Center(
                child: Container(
                  width: 289,
                  height: 407,
                  decoration: BoxDecoration(
                      color: Colors.white30,
                      borderRadius: BorderRadius.circular(40)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: Container(
                    width: 315,
                    height: 459,
                    decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(40)),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 25, top: 25, right: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: 138,
                            height: 25,
                            child: Text(
                              "Future Weather",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: "Nunito Sans",
                                  color: Color(0xff333333)),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Image.asset("img/Sun cloud angled rain.png"),
                              Text("29º",
                                  style: TextStyle(
                                      fontFamily: "Nunito Sans",
                                      fontWeight: FontWeight.w900,
                                      fontSize: 36,
                                      color: Color(0xff333333))),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Monday",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w800,
                                          fontFamily: "Nunito Sans",
                                          color: Color(0xff333333))),
                                  Text("9 March 2021",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w800,
                                          fontFamily: "Nunito Sans",
                                          color: Color(0xffDDDBF3))),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 1.0),
                            child: Divider(
                              color: Color(0xffE0E0E0),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Image.asset("img/Sun cloud little rain.png"),
                              Text("22º",
                                  style: TextStyle(
                                      fontFamily: "Nunito Sans",
                                      fontWeight: FontWeight.w900,
                                      fontSize: 36,
                                      color: Color(0xff333333))),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Tuesday",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w800,
                                          fontFamily: "Nunito Sans",
                                          color: Color(0xff333333))),
                                  Text("10 March 2021",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w800,
                                          fontFamily: "Nunito Sans",
                                          color: Color(0xffDDDBF3))),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 1.0),
                            child: Divider(
                              color: Color(0xffE0E0E0),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Image.asset("img/Big rain drops.png"),
                              Text("19º",
                                  style: TextStyle(
                                      fontFamily: "Nunito Sans",
                                      fontWeight: FontWeight.w900,
                                      fontSize: 36,
                                      color: Color(0xff333333))),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Wednesday",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w800,
                                          fontFamily: "Nunito Sans",
                                          color: Color(0xff333333))),
                                  Text("11 March 2021",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w800,
                                          fontFamily: "Nunito Sans",
                                          color: Color(0xffDDDBF3))),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 0.0),
                            child: Divider(
                              color: Color(0xffE0E0E0),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Image.asset("img/Sun cloud mid rain.png"),
                              Text("28º",
                                  style: TextStyle(
                                      fontFamily: "Nunito Sans",
                                      fontWeight: FontWeight.w900,
                                      fontSize: 36,
                                      color: Color(0xff333333))),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Thursday",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w800,
                                          fontFamily: "Nunito Sans",
                                          color: Color(0xff333333))),
                                  Text("12 March 2021",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w800,
                                          fontFamily: "Nunito Sans",
                                          color: Color(0xffDDDBF3))),
                                  Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 1.0))
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ])
          ],
        ),
      ]),
    );
  }
}
