// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Admin.dart';
import 'package:flutter_application_2/PassLabel.dart';
import 'package:flutter_application_2/PhoneLabel.dart';
import 'package:flutter_application_2/RepassLabel.dart';
import 'package:provider/provider.dart';

import '../theme.dart';
import 'EmailLabel.dart';
import 'NameLabel.dart';
import 'Sign_in.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController phoneController;
  late TextEditingController passController;
  late TextEditingController repassController;
  bool val = true;

  @override
  void initState() {
    nameController = TextEditingController();
    emailController = TextEditingController();
    phoneController = TextEditingController();
    passController = TextEditingController();
    repassController = TextEditingController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 115, 100, 215),
        title: const Text(
          "Sign up Screen",
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => Signin(),
              ),
            );
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.brightness_6),
            color: Colors.white,
            onPressed: () {
              Provider.of<ThemeProvider>(context, listen: false).swapTheme();
            },
          )
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              const Center(
                child: Text(
                  "Create an Account",
                  style: TextStyle(
                      fontSize: 30,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Center(
                child: Text(
                  "You Are Welcome",
                  style: TextStyle(fontSize: 15, color: Colors.grey
                      // color: Color.fromARGB(97, 255, 255, 255),
                      ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text("Your Name",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      )),
                ],
              ),
              Container(
                  margin: const EdgeInsets.all(20),
                  child: NameLabel(nameController: nameController)),
              const SizedBox(
                height: 20,
              ),
              const Text("Your Email",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    // color: Colors.white,
                  )),
              Container(
                margin: const EdgeInsets.all(30),
                child: EmailLabel(
                  emailController: emailController,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("Your Phone",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    // color: Colors.white,
                  )),
              Container(
                margin: const EdgeInsets.all(30),
                child: PhoneLabel(phoneController: phoneController),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("Your Password",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    // color: Colors.white,
                  )),
              Container(
                margin: const EdgeInsets.all(30),
                child: PassLabel(passController: passController),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("Confirm Password",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    // color: Colors.white,
                  )),
              Container(
                  margin: const EdgeInsets.all(30),
                  child: RepassLabel(repassController: repassController)),
              Container(
                margin: const EdgeInsets.only(left: 100),
                child: Row(
                  children: [
                    Checkbox(
                        activeColor: Colors.grey,
                        value: val,
                        onChanged: (_) {
                          setState(() {
                            if (val == true) {
                              val = false;
                            } else {
                              val = true;
                            }
                          });
                        }),
                    const Text("I Agree With Terms  "),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: SizedBox(
                    height: 70,
                    width: 600,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 115, 100, 215),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                      child: const Text(
                        "Sign Up ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                //Center Row contents vertically,
                mainAxisAlignment: MainAxisAlignment
                    .center, //Center Row contents horizontally,

                children: [
                  SizedBox(
                    height: 50,
                    width: 150,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: const BeveledRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4))),
                        backgroundColor: const Color.fromARGB(255, 69, 68, 67),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Facebook ",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    height: 50,
                    width: 150,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: const BeveledRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4))),
                        backgroundColor: Color.fromARGB(255, 69, 68, 67),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Gmail ",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have  an Account ",
                  ),
                  Builder(builder: (cont) {
                    return TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => Signin(),
                            ),
                          );
                        },
                        child: const Text("sign in ",
                            style: TextStyle(
                                color: Color.fromARGB(255, 88, 85, 129))));
                  }),
                ],
              ),
            ],
          ),
        ),
      ),
    )
        // )
        ;
  }

  State<StatefulWidget> createState() {
    throw UnimplementedError();
  }
}
