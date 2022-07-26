import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(0, 196, 192, 1),
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text(
                    "My Task",
                    style: TextStyle(
                      fontFamily: "Segoe UI",
                      fontWeight: FontWeight.w700,
                      fontSize: 35,
                      color: Color(0xffffffff),
                    ),
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset("images/user.png"),
                    ),
                  )
                ],
              ),
              const Text(
                "You have 3 task today",
                style: TextStyle(
                  fontFamily: "Segoe UI",
                  fontSize: 18,
                  color: Color(0xfffbfbfb),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 9,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height / 2.2,
                      width: MediaQuery.of(context).size.width / 1.5,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              "Walk",
                              style: TextStyle(
                                fontFamily: "Segoe UI",
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: Color(0xff00c4c0),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 70,
                            ),
                            const Text(
                              "Walk for 30 minutes in\na new rural area ",
                              style: TextStyle(
                                fontFamily: "Segoe UI",
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: Color(0xff040404),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 22,
                            ),
                            const Text(
                              "If you are not in a rural area\nthen at first you have to go in a rural area. Then take a stopwatch and walk for 30 minutes. Remember don't take any rest while you arewalking.",
                              style: TextStyle(
                                fontFamily: "Segoe UI",
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: Color(0xff717473),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 22,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const <Widget>[
                                Text(
                                  "3 Comments",
                                  style: TextStyle(
                                    fontFamily: "Segoe UI",
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                    color: Color(0xff00c4c0),
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  size: 25,
                                  color: Color.fromRGBO(0, 196, 192, 1),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 2.2,
                      width: MediaQuery.of(context).size.width / 1.5,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Text(
                              "Walk",
                              style: TextStyle(
                                fontFamily: "Segoe UI",
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: Color(0xff00c4c0),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 70,
                            ),
                            new Text(
                              "Walk for 30 minutes in\na new rural area ",
                              style: TextStyle(
                                fontFamily: "Segoe UI",
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: Color(0xff040404),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 22,
                            ),
                            new Text(
                              "If you are not in a rural area\nthen at first you have to go in a rural area. Then take a stopwatch and walk for 30 minutes. Remember don't take any rest while you arewalking.",
                              style: TextStyle(
                                fontFamily: "Segoe UI",
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: Color(0xff717473),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 22,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                new Text(
                                  "3 Comments",
                                  style: TextStyle(
                                    fontFamily: "Segoe UI",
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                    color: Color(0xff00c4c0),
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  size: 25,
                                  color: Color.fromRGBO(0, 196, 192, 1),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 2.2,
                      width: MediaQuery.of(context).size.width / 1.5,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              "Walk",
                              style: TextStyle(
                                fontFamily: "Segoe UI",
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: Color(0xff00c4c0),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 70,
                            ),
                            const Text(
                              "Walk for 30 minutes in\na new rural area ",
                              style: TextStyle(
                                fontFamily: "Segoe UI",
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: Color(0xff040404),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 22,
                            ),
                            const Text(
                              "If you are not in a rural area\nthen at first you have to go in a rural area. Then take a stopwatch and walk for 30 minutes. Remember don't take any rest while you arewalking.",
                              style: TextStyle(
                                fontFamily: "Segoe UI",
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: Color(0xff717473),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 22,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                const Text(
                                  "3 Comments",
                                  style: TextStyle(
                                    fontFamily: "Segoe UI",
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                    color: Color(0xff00c4c0),
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  size: 25,
                                  color: Color.fromRGBO(0, 196, 192, 1),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 15,
              ),
              Center(
                child: FloatingActionButton(
                  backgroundColor: Colors.white,
                  onPressed: () {},
                  child: Icon(
                    Icons.add,
                    size: 40,
                    color: Color.fromRGBO(0, 196, 192, 1),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
