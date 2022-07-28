import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  int bedCounter = 1;
  int bathCounter = 1;

  void _incrementBed() {
    setState(() {
      bedCounter++;
    });
  }

  void _decrementBed() {
    setState(() {
      bedCounter--;
    });
  }

  void _incrementBath() {
    setState(() {
      bathCounter++;
    });
  }

  void _decrementBath() {
    setState(() {
      bathCounter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(239, 240, 241, 1),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Neumorphic(
                      style: const NeumorphicStyle(
                          shape: NeumorphicShape.concave,
                          boxShape: NeumorphicBoxShape.circle(),
                          depth: 10,
                          lightSource: LightSource.topLeft,
                          color: Colors.white),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 20,
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.black54,
                            size: 20,
                          ),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Neumorphic(
                      style: const NeumorphicStyle(
                          shape: NeumorphicShape.concave,
                          boxShape: NeumorphicBoxShape.circle(),
                          depth: 10,
                          lightSource: LightSource.topLeft,
                          color: Colors.white),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 20,
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          icon: Icon(
                            Icons.notifications,
                            color: Colors.black54,
                            size: 20,
                          ),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Neumorphic(
                style: const NeumorphicStyle(
                    shape: NeumorphicShape.concave,
                    boxShape: NeumorphicBoxShape.circle(),
                    depth: 10,
                    lightSource: LightSource.topLeft,
                    color: Colors.white60),
                child: Card(
                  elevation: 5,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  child: CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          child: Image.asset("images/cleaning.png")),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "David Cooper",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontFamily: "Roboto"),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "@cooper",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.grey,
                    fontFamily: "Roboto"),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text(
                    "Bedroom",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey,
                        fontFamily: "Roboto"),
                  ),
                  Text(
                    "Bathroom",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey,
                        fontFamily: "Roboto"),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 35.00,
                    width: 111.00,
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0.00, 3.00),
                          color: Color(0xff000000).withOpacity(0.16),
                          blurRadius: 6,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(20.00),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            if (bedCounter > 0) {
                              _decrementBed();
                            }
                          },
                          child: const Text(
                            "-",
                            style: TextStyle(
                              fontFamily: "Segoe UI",
                              fontWeight: FontWeight.w700,
                              fontSize: 25,
                              color: Color(0xff525858),
                            ),
                          ),
                        ),
                        Text(
                          '$bedCounter',
                          style: const TextStyle(
                            fontFamily: "Segoe UI",
                            fontWeight: FontWeight.w500,
                            fontSize: 25,
                            color: Color(0xfff300bb),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            _incrementBed();
                          },
                          child: const Text(
                            "+",
                            style: TextStyle(
                              fontFamily: "Segoe UI",
                              fontWeight: FontWeight.w700,
                              fontSize: 25,
                              color: Color(0xff525858),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 35.00,
                    width: 111.00,
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0.00, 3.00),
                          color: Color(0xff000000).withOpacity(0.16),
                          blurRadius: 6,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(20.00),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: (){
                            if(bathCounter>0){
                              _decrementBath();
                            }
                          },
                          child: const Text(
                            "-",
                            style: TextStyle(
                              fontFamily: "Segoe UI",
                              fontWeight: FontWeight.w700,
                              fontSize: 25,
                              color: Color(0xff525858),
                            ),
                          ),
                        ),
                        Text(
                          "$bathCounter",
                          style: const TextStyle(
                            fontFamily: "Segoe UI",
                            fontWeight: FontWeight.w500,
                            fontSize: 25,
                            color: Color(0xfff300bb),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            _incrementBath();
                          },
                          child: const Text(
                            "+",
                            style: TextStyle(
                              fontFamily: "Segoe UI",
                              fontWeight: FontWeight.w700,
                              fontSize: 25,
                              color: Color(0xff525858),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xff14433e),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.00),
                    topRight: Radius.circular(30.00),
                  ),
                ),
                child: Column(
                  
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
