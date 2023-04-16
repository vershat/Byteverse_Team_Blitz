import 'package:flutter/material.dart';
import 'package:thella_wala/splash_screen/Home.dart';
import 'package:thella_wala/splash_screen/Myfavorites.dart';
import 'package:thella_wala/splash_screen/feedback.dart';

void main() => runApp(const About());

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  static const String _title = 'Sample App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        //appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
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
      child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyAppl()),
                        );
                      },
                      icon: Icon(Icons.arrow_back_ios_new_outlined, size: 20))
                ],
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/blank-profile-picture.webp'),
                  radius: 80,
                ),
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Name ',
                    style: TextStyle(fontSize: 18),
                  )),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyFavorite()),
                    );
                  },
                  child: ListTile(
                    leading: Icon(Icons.favorite_rounded),
                    title: Text('My Favorites'),
                    trailing: Icon(Icons.arrow_forward_outlined),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Feed()),
                    );
                  },
                  child: ListTile(
                    leading: Icon(Icons.feedback),
                    title: Text('Feedback'),
                    trailing: Icon(Icons.arrow_forward_outlined),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: TextButton(
                  onPressed: () {},
                  child: ListTile(
                    leading: Icon(Icons.logout),
                    title: Text('Log out'),
                    trailing: Icon(Icons.arrow_forward_outlined),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'About ',
                    style: TextStyle(fontSize: 18),
                  )),
              SizedBox(
                height: 20,
              ),
              Expanded(
                  child: Divider(
                color: Colors.black,
              )),
              Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'App Version\n V.10.0 ',
                    style: TextStyle(fontSize: 15),
                  )),
              Expanded(
                  child: Divider(
                color: Colors.black,
              )),
              SizedBox(
                height: 20,
              ),
            ],
          )),
    );
  }
}
