// TODO Implement this library.
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:thella_wala/splash_screen/copygetotp.dart';
import 'package:thella_wala/splash_screen/location.dart';
class MyVerify extends StatefulWidget {
  const MyVerify({Key? key, required Text title}) : super(key: key);

  @override
  State<MyVerify> createState() => _MyVerifyState();
}

class _MyVerifyState extends State<MyVerify> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );
    var code = "";
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
        ),
        elevation: 0,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 25, right: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image.asset(
              //   'assets/img1.png',
              //   width: 150,
              //   height: 150,
              // ),
              // SizedBox(
              //   height: 25,
              // ),
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Verify with OTP send to your mobile',
                    style: TextStyle(fontSize: 30),
                  )),
              SizedBox(
                height: 50,
              ),

              // Text(
              //   "Phone Verification",
              //   style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              // Text(
              //   "We need to register your phone without getting started!",
              //   style: TextStyle(
              //     fontSize: 16,
              //   ),
              //   textAlign: TextAlign.center,
              // ),
              // SizedBox(
              //   height: 30,
              // ),
              Pinput(
                length: 6,
                onChanged: (value) {
                  code = value;
                },
                // defaultPinTheme: defaultPinTheme,
                // focusedPinTheme: focusedPinTheme,
                // submittedPinTheme: submittedPinTheme,

                showCursor: true,
                onCompleted: (pin) => print(pin),
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
                      try {
                        PhoneAuthCredential credential =
                            PhoneAuthProvider.credential(
                                verificationId: MyPhone.verify, smsCode: code);

                        // Sign the user in (or link) with the credential
                        await auth.signInWithCredential(credential);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Location()),
                        );
                      } catch (e) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Location()),
                        );
                        print("wrong otp");
                      }
                    },
                    child: Text("Continue")),
              ),
              Row(
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          'phone',
                          (route) => false,
                        );
                      },
                      child: Text(
                        "Edit Phone Number ?",
                        style: TextStyle(color: Colors.black),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
