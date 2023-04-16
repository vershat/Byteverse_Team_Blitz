import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class Addmenu extends StatefulWidget {
  const Addmenu({super.key});

  @override
  State<Addmenu> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Addmenu> {
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
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Add Menu',
                style: TextStyle(fontSize: 40),
              )),
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
                                image: AssetImage("assets/chat.jpg")))),
                  ),
                  //CircleAvatar
                  //SizedBox
                ),
                Positioned(
                  top: 45,
                  left: 160,
                  child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        'Panipuri',
                        style: TextStyle(fontSize: 20),
                      )),
                ),
                Positioned(
                  top: 45,
                  left: 160,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        labelText: 'Shop Name/Food name',
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add_box_rounded, size: 20)) //SizedBox
              ],
            ), //Column
          ),
        ]),
      ),
    ); //Padding
    //SizedBox

    //                            Text( 'Shyam Bhelpuri',
    //       style: TextStyle(fontSize: 20),)

    //       ],
    //     ),
    //   ),
    // ),
  }
}
