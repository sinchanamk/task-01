import 'package:flutter/material.dart';
import 'vendor_login.dart';

class VendorRegisterScreen extends StatefulWidget {
  @override
  _VendorRegisterScreenState createState() => _VendorRegisterScreenState();
}

class _VendorRegisterScreenState extends State<VendorRegisterScreen> {
  final namecontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final confirmcontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Column(children: [
                  SizedBox(
                    height: 200,
                  ),
                  Container(
                      height: MediaQuery.of(context).size.height * 0.7,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(38),
                      ),
                      child: Column(children: [
                        SizedBox(
                          height: 60.0,
                          child: Padding(
                            padding: EdgeInsets.only(top: 28.0, left: 25),
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                'Register here',
                                style: TextStyle(
                                    color: Colors.yellow,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 24, right: 24, bottom: 10),
                          child: TextFormField(
                            maxLines: 2,
                            cursorColor: Colors.yellow,
                            decoration: const InputDecoration(
                              hintText: "Enter Name",
                              hintStyle: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.yellow),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.yellow),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                            ),
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 24,
                            right: 24,
                          ),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            maxLines: 2,
                            decoration: const InputDecoration(
                              hintText: "Enter Email",
                              hintStyle: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.yellow),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.yellow)),
                            ),
                            validator: (value) {
                              if (value!.isEmpty || !value.contains('@')) {
                                return 'Please enter a valid email.';
                              }
                              return null;
                            },
                            controller: emailcontroller,

                            // ignore: prefer_const_constructors
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 24, right: 24, top: 20),
                          child: TextFormField(
                            // maxLines: 2,
                            keyboardType: TextInputType.visiblePassword,
                            decoration: const InputDecoration(
                              hintText: "Enter Password",
                              hintStyle: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.yellow),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.yellow)),
                            ),
                            obscureText: true,
                            style: TextStyle(color: Colors.grey),
                            validator: (value) {
                              if (value!.length < 8) {
                                return 'Password must be longer than 8 characters.';
                              }
                              return null;
                            },

                            textInputAction: TextInputAction.next,
                            onFieldSubmitted: (value) {
                              // _password=value;
                            }, // get value from TextField
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 24, right: 24, top: 20),
                          child: TextFormField(
                            // maxLines: 2,
                            keyboardType: TextInputType.visiblePassword,
                            decoration: const InputDecoration(
                              hintText: "Enter Confirm Password",
                              hintStyle: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.yellow),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.yellow)),
                            ),
                            obscureText: true,
                            style: TextStyle(color: Colors.grey),
                            validator: (value) {
                              if (value!.length < 8) {
                                return 'Password must be longer than 8 characters.';
                              }
                              return null;
                            },

                            textInputAction: TextInputAction.next,
                            onFieldSubmitted: (value) {
                              // _password=value;
                            }, // get value from TextField
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: SizedBox(
                                width: 300,
                                height: 50,
                                child: RaisedButton(
                                  color: Colors.yellow,
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) {
                                        return LoginPage();
                                      }),
                                    );
                                  },
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    // side: BorderSide(color: Colors.lightcyan, width: 2)
                                  ),
                                  textColor: Colors.white,
                                  child: Text(
                                    "Continue",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                )))
                      ]))
                ]))))
                );
  }
}
