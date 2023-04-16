import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:thella_wala/splash_screen/Screen1.dart';
import 'package:thella_wala/splash_screen/copygetotp2.dart';
import 'package:thella_wala/splash_screen/location.dart';
// import 'copygetyotp2.dart';
// import 'package:gali_food/screens/copygetyotp2.dart';

class MyPhone extends StatefulWidget {
  const MyPhone({Key? key}) : super(key: key);
  static String verify = "";
  @override
  State<MyPhone> createState() => _MyPhoneState();
}

class _MyPhoneState extends State<MyPhone> {
  TextEditingController countryController = TextEditingController();
  var phone = "";
  @override
  void initState() {
    // TODO: implement initState
    countryController.text = "+91";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 25, right: 25),
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                           Navigator.push(
                      context,                       
                      MaterialPageRoute(builder: (context) => Screen1()),
                    );
                        },
                        icon: Icon(Icons.arrow_back_ios_new_outlined, size: 20))
                  ],
                ),
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      ' Enter your mobile number number to get OTP',
                      style: TextStyle(fontSize: 30),
                    )),
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: 55,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 40,
                        child: TextField(
                          controller: countryController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Text(
                        "|",
                        style: TextStyle(fontSize: 33, color: Colors.grey),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: TextField(
                        onChanged: (value) {
                          phone = value;
                        },
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Phone",
                        ),
                      ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xff88FFDD),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: () async {
                        await FirebaseAuth.instance.verifyPhoneNumber(
                          phoneNumber: '${countryController.text + phone}',
                          verificationCompleted:
                              (PhoneAuthCredential credential) {},
                          verificationFailed: (FirebaseAuthException e) {},
                          codeSent: (String verificationId, int? resendToken) {
                            MyPhone.verify = verificationId;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyVerify(
                                        title: Text('hello'),
                                      )),
                            );
                          },
                          codeAutoRetrievalTimeout: (String verificationId) {},
                        );
                      },
                      child: Text("Get OTP")),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
