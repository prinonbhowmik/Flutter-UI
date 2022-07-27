import 'package:flutter/material.dart';

import 'Second.dart';

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Center(
                child: Container(
                  height: 200,
                  child: Image.asset("images/cleaning.png"),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Your house",
                style: TextStyle(
                  fontFamily: "Segoe UI",
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                  color: Color(0xfffbfbfb),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "cleaning service",
                style: TextStyle(
                  fontFamily: "Segoe UI",
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                  color: Color(0xfffbfbfb),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "24/7",
                style: TextStyle(
                  fontFamily: "Segoe UI",
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                  color: Color(0xfffbfbfb),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Container(
                    height: 40.00,
                    width: 154.00,
                    decoration: BoxDecoration(
                      color: Color(0xffff9b04),
                      border: Border.all(
                        width: 1.00,
                        color: Color(0xff707070),
                      ),
                      borderRadius: BorderRadius.circular(10.00),
                    ),
                    child: Center(
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Second()));
                        },
                        child: const Text(
                          "Go",
                          style: TextStyle(
                            fontFamily: "Segoe UI",fontWeight: FontWeight.w400,
                            fontSize: 33,
                            color:Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
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
