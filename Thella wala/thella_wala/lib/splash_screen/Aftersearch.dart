// ignore_for_file: prefer_const_constructors
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class AfterSearch extends StatefulWidget {
  const AfterSearch({super.key});

  @override
  State<AfterSearch> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<AfterSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10),

        //color: Colors.amber,
        child: ListView(children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back_ios_new_outlined, size: 20))
            ],
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search, size: 20),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                labelText: 'Shop Name/Food name',
              ),
            ),
          ),
          Container(
            height: 230,
            child: Stack(
              children: [
                Positioned(
                  top: 35,
                  child: Material(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 188,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              offset: Offset(-10.0, 10.0),
                              blurRadius: 20.0,
                              spreadRadius: 4.0),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 40,
                  child: Card(
                    elevation: 10,
                    shadowColor: Colors.grey.withOpacity(0.5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    //color: Colors.greenAccent[100],
                    child: Container(
                        width: 150,
                        height: 170,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("assets/thela.png")))),
                  ),
                  //CircleAvatar
                  //SizedBox
                ),
                Positioned(
                  top: 45,
                  left: 160,
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              ' Chotu Panipuri ',
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.star_border_rounded, size: 20),
                            Text(
                              '3.5(100+).5 mins ',
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Row(
                          children: [
                            Text(
                              'Panipuri and snacks.2km ',
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ), //SizedBox
              ],
            ), //Column
          ),
          SizedBox(height: 25),
          Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'More results like this',
                style: TextStyle(fontSize: 25),
              )),
          SizedBox(height: 20),
          Container(
            height: 230,
            child: Stack(
              children: [
                Positioned(
                  top: 35,
                  child: Material(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 188,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              offset: Offset(-10.0, 10.0),
                              blurRadius: 20.0,
                              spreadRadius: 4.0),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 40,
                  child: Card(
                    elevation: 10,
                    shadowColor: Colors.grey.withOpacity(0.5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    //color: Colors.greenAccent[100],
                    child: Container(
                        width: 150,
                        height: 170,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("assets/thela.png")))),
                  ),
                  //CircleAvatar
                  //SizedBox
                ),
                Positioned(
                  top: 45,
                  left: 160,
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              ' Chotu Panipuri ',
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.star_border_rounded, size: 20),
                            Text(
                              '3.5(100+).5 mins ',
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Row(
                          children: [
                            Text(
                              'Panipuri and snacks.2km ',
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ), //SizedBox
              ],
            ), //Column
          ),
        ]),
      ),
    );

    //Padding
  }
}
