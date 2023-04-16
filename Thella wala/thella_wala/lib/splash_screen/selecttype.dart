import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:thella_wala/splash_screen/Home.dart';
import 'package:thella_wala/splash_screen/login.dart';

class CreateAccountPage extends StatefulWidget {
  static const String routeName = '/CreateAccountPage';
  const CreateAccountPage({Key? key}) : super(key: key);

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  bool hasChanged = false;
  // final FirebaseAuthentication _auth = FirebaseAuthentication();
  int option = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          style: TextStyle(
                            fontSize: 25.0,
                            color: Color.fromARGB(255, 63, 63, 63),
                            fontWeight: FontWeight.w800,
                          ),
                          "Help us to know you",
                        ),
                        const Text(
                          "Select the user type you want to\n proceed with",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Color.fromARGB(255, 63, 63, 63),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        CarouselSlider(
                          items: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset("assets/profilepic.png",
                                    color: hasChanged
                                        ? Color(0xFFbbbbbb)
                                        : Colors.black),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MyAppl()),
                                    );
                                  },
                                  style: TextButton.styleFrom(
                                    alignment: Alignment.topCenter,
                                    primary: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(28.0)),
                                    backgroundColor: Colors.greenAccent,
                                    minimumSize: const Size(100.0, 40.0),
                                  ),
                                  child: Text("USER",
                                      style: TextStyle(
                                        color: hasChanged
                                            ? Color(0xFFbbbbbb)
                                            : Colors.black,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w600,
                                      )),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset("assets/profilepic.png",
                                    color: hasChanged
                                        ? Colors.black
                                        : Color(0xFFbbbbbb)),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => login()),
                                    );
                                  },
                                  style: TextButton.styleFrom(
                                    alignment: Alignment.topCenter,
                                    primary: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(28.0)),
                                    backgroundColor: Colors.greenAccent,
                                    minimumSize: const Size(100.0, 40.0),
                                  ),
                                  child: Text(
                                    "CART OWNER",
                                    style: TextStyle(
                                      color: hasChanged
                                          ? Colors.black
                                          : Color(0xFFbbbbbb),
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                          options: CarouselOptions(
                            height: 180.0,
                            viewportFraction: 0.50,
                            enableInfiniteScroll: false,
                            enlargeCenterPage: true,
                            onPageChanged: (indexOfPage, reason) {
                              //indexOfPage=0: Helper
                              //indexOfPage=1: Organisation
                              setState(() {
                                option = indexOfPage;
                                hasChanged = !hasChanged;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_back_ios),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
