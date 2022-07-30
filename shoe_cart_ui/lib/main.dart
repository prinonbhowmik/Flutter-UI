import 'package:flutter/cupertino.dart';
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
        body: Column(
          children: [
            Expanded(
                flex: 4,
                child: Container(
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    overflow: Overflow.visible,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                        ),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                              colors: [Colors.pink,Colors.purpleAccent])
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: const <Widget>[
                                  Icon(
                                    Icons.menu,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 25,
                                    child: Icon(Icons.shopping_cart),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "Men Shoe",
                                style: TextStyle(
                                  fontSize: 28,
                                  fontFamily: "Segoe UI",
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xffffffff),
                                ),
                              ),
                              Row(
                                children: const <Widget>[
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "4.5",
                                    style: TextStyle(
                                      fontFamily: "Segoe UI",
                                      fontSize: 18,
                                      color: Color(0xffffffff),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "Size -  9",
                                style: TextStyle(
                                  fontFamily: "Segoe UI",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: Color(0xffffffff),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "Brand : Adidas",
                                style: TextStyle(
                                  fontFamily: "Segoe UI",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: Color(0xffffffff),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: -70,
                          child: Row(
                            children:  [
                              Padding(
                                  padding: EdgeInsets.all(10.0),
                                child: Card(
                                  elevation: 8,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(50))),
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Colors.white,
                                    child: Icon(
                                      Icons.favorite,
                                      color: Colors.pink,
                                      size: 30,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 70,
                              ),
                              Padding(
                                padding:  EdgeInsets.all(10.0),
                                child: Container(
                                    height: 120,
                                    child: Image.network(
                                        "https://ya-webdesign.com/transparent250_/adidas-shoes-png.png")),
                              )
                            ],
                          )
                      )
                    ],
                  ),
                )
            ),
            Expanded(
              flex: 5,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 11,
                        ),
                        const Text(
                          "Description",
                          style: TextStyle(
                            fontFamily: "Segoe UI",
                            fontWeight: FontWeight.w600,
                            fontSize: 25,
                            color: Color(0xff000000),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 40,
                        ),
                        const Text(
                          "It is a new branded Adidas shoe. This is\nspecially for sports players. It has only one colour.",
                          style: TextStyle(
                            fontFamily: "Segoe UI",
                            fontSize: 15,
                            color: Color(0xff000000),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 40,
                        ),
                        const Text(
                          "Quantity",
                          style: TextStyle(
                            fontFamily: "Segoe UI",
                            fontWeight: FontWeight.w600,
                            fontSize: 25,
                            color: Color(0xff000000),
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            RaisedButton(
                              onPressed: () {},
                              child: Text(
                                "-",
                                style: TextStyle(fontSize: 30),
                              ),
                            ),
                            RaisedButton(
                              onPressed: () {},
                              child: Text(
                                "+",
                                style: TextStyle(fontSize: 30),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 12,
                            ),
                            Text(
                              "1",
                              style: TextStyle(fontSize: 30),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
            ),
            Expanded(
                flex: 1,
                child: Container(
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: <Widget>[
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          child: Row(
                            children: const <Widget>[
                              Text(
                                "\$",
                                style: TextStyle(
                                    fontSize: 25, color: Colors.blue),
                              ),
                              Text(
                                "100",
                                  style: TextStyle(
                                      fontSize: 28,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                          child: Container(
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(60)),
                                color: Colors.blue),
                            height: MediaQuery.of(context).size.height / 7.3,
                            width: MediaQuery.of(context).size.width / 2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text(
                                    "Buy Now",
                                    style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),),
                                ),
                              ],
                            ),
                          ))
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
