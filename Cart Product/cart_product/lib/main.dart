import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  MyCartPage(),
    );
  }
}

class MyCartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: EdgeInsets.all(25.0),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height/2.5,
                    width: MediaQuery.of(context).size.width,
                    child: Image.network("https://www.bhphotovideo.com/images/images1500x1500/jbl_jbllive400btwhtam_live_400bt_wireless_on_ear_1458736.jpg"),
                  ),
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  overflow: Overflow.visible,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 3,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        border: Border.all(
                          width: 5.00,
                          color: Color(0xffeceaea),
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50.00),
                          topRight: Radius.circular(50.00),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("JBL",
                                style: TextStyle(
                                  fontFamily: "Segoe UI",
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  color: Color(0xff000000),
                                )
                            ),
                            Text(
                              "400BT Wireless",
                              style: TextStyle(
                                fontFamily: "Segoe UI",
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: Color(0xff4e4848),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "With up to 24 hours of battery life, you can listen to your favorite audio all day with the white LIVE 400BT Wireless On-Ear Headphones from JBL. Your favorite music is streamed via Bluetooth wireless technology through 40mm drivers that deliver JBL's Signature Sound.",
                              style: TextStyle(
                                fontFamily: "Segoe UI",
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                                color: Color(0xff514d51),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "\$165",
                              style: TextStyle(
                                fontFamily: "Segoe UI",
                                fontWeight: FontWeight.w700,
                                fontSize: 25,
                                color: Color(0xffe510d0),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -30,
                        child: Card(
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 30,
                            child: Padding(padding: EdgeInsets.all(15.0),
                            child: Image.asset("images/add.png"),),
                          ),
                        )
                    )
                  ],
                )
              ],
            ),
          ),
        )
    );
  }

}

