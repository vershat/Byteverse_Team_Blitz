import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:thella_wala/splash_screen/Addmenu.dart';
import 'package:thella_wala/splash_screen/Home.dart';
import 'package:thella_wala/splash_screen/profile_screen.dart';
import 'package:thella_wala/splash_screen/selecttype.dart';
// void main() => runApp(const MyApp());

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

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
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
                      onPressed: () { Navigator.push(
                      context,                       
                      MaterialPageRoute(builder: (context) =>CreateAccountPage()),
                    );},
                      icon: Icon(Icons.arrow_back_ios_new_outlined, size: 20))
                ],
              ),
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Welcome',
                    style: TextStyle(fontSize: 40),
                  )),
              Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Enter your email address to connect to your account',
                    style: TextStyle(fontSize: 20),
                  )),
              SizedBox(
                height: 100,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    labelText: 'Email id',
                    // onFieldSubmittedValue: (value){
                    //   Utils.fieldFocus(context, emailFocusNode,passwordFocusNode)
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    labelText: 'Password ',
                  ),
                ),
              ),
              Align(
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forget Password',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline,
                        ),
                      ))),
              SizedBox(
                height: 50,
              ),
              Align(
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(children: [
                      Text(
                        'Dont have an account?',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.w400),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Profile()),
                            );
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.underline,
                            ),
                          ))
                    ]),
                  ),
                ),
              ),
              Align(
                child: TextButton(
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
                      MaterialPageRoute(builder: (context) => Addmenu())
                    
                        );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 34),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  // onPressed: () {},
                ),
              )
            ],
          )),
    );
  }
}
//    Future signIn() async {
//       await FireBas eAuth.instance.signInWithEmailAndPassword(
//         email: emailController.text.trim(),
//         password:  passwordController.text.trim(),
//       );
//     }
//   }
// }