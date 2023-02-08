import 'package:flutter/material.dart';
import 'package:flutter_application_2/Admin.dart';
import 'package:flutter_application_2/EmailLabel.dart';
import 'package:flutter_application_2/PassLabel.dart';
import 'package:flutter_application_2/reset.dart';
import 'package:flutter_application_2/theme.dart';
import 'package:provider/provider.dart';

import 'SignupScreen.dart';

class Signin extends StatefulWidget {
  @override
  _Signin createState() => _Signin();
}

class _Signin extends State<Signin> {
  late TextEditingController emailController;
  late TextEditingController passController;

  bool val = true;
  @override
  void initState() {
    emailController = TextEditingController();
    passController = TextEditingController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 115, 100, 215),
          title: const Text(
            "Welcom  Again!",
            style: TextStyle(fontStyle: FontStyle.italic),
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
                    const Text(
                      "Your Email",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    Container(
                        margin: const EdgeInsets.all(30),
                        child: EmailLabel(emailController: emailController)),

                    ///
                    const Text(
                      "Your Password",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    Container(
                        margin: const EdgeInsets.all(30),

                        // ignore: unnecessary_const
                        child: PassLabel(passController: passController)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Builder(builder: (cont) {
                          return TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) => Reset(),
                                  ),
                                );
                              },
                              child: const Text("FORGET PASSWORD ? ",
                                  style: TextStyle(color: Colors.grey)));
                        }),
                      ],
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
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                          child: const Text(
                            "Login ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ), //child widget inside this button
                        ),
                      ),
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
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4))),
                              backgroundColor:
                                  const Color.fromARGB(255, 69, 68, 67),
                            ),
                            onPressed: () {},
                            child: const Text(
                              "Facebook ",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        SizedBox(
                          height: 50,
                          width: 150,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape: const BeveledRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4))),
                              backgroundColor: Color.fromARGB(255, 69, 68, 67),
                            ),
                            onPressed: () {},
                            child: const Text(
                              "Gmail ",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 500, right: 500),
                      child: Row(
                        children: [
                          const Text(
                            "Don't have  an Account ",
                          ),
                          Builder(builder: (cont) {
                            return TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          SignupScreen(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  "sign up ",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 88, 85, 129)),
                                ));
                          }),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Builder(builder: (cont) {
                          return TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) => Admin(),
                                  ),
                                );
                              },
                              child: const Text("You Are Admin ? ",
                                  style: TextStyle(color: Colors.grey)));
                        }),
                      ],
                    ),
                  ]),
            )));
  }
}
