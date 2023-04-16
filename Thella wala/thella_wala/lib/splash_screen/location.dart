import 'package:flutter/material.dart';
import 'package:thella_wala/splash_screen/copygetotp2.dart';
import 'package:thella_wala/splash_screen/selecttype.dart';

class Location extends StatelessWidget {
  const Location({Key? key}) : super(key: key);

  static const String _title = 'Sample App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        //appBar: AppBar(title: const Text(_title)),
        body: MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: 
         ListView(
           children: [
             Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  opacity: 0.4,
                  image: AssetImage(
                    "assets/map.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
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
                          'What is your   location?',
                          style: TextStyle(fontSize: 40),
                        )),
                    Container(
                        alignment: Alignment.topLeft,
                        padding: const EdgeInsets.all(10),
                        child: Align(
                          child: const Text(
                            'We need  your location to show\n available food shops',
                            style: TextStyle(fontSize: 20),
                          ),
                        )),
                    const SizedBox(
                      height: 300,
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                          // foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          backgroundColor: Color(0xff88FFDD)),
      
                      // ignore: prefer_const_constructors
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CreateAccountPage()),
                        );
                      },
                      child: Padding(
                        padding:
                            const EdgeInsets.symmetric(vertical: 10, horizontal: 34),
                        child: const Text(
                          "Allow Location Access",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(10),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            ' Enter Location Manually',
                            style: TextStyle(fontSize: 20),
                          ),
                        )),
                  ],
                ),
              ),
        ),
           ],
         ),
      
    );
  }
}