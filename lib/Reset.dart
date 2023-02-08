import 'package:flutter/material.dart';
import 'package:flutter_application_2/AlmostDone.dart';
import 'package:flutter_application_2/EmailLabel.dart';

import 'SignupScreen.dart';

class Reset extends StatefulWidget {
  @override
  State<Reset> createState() => _ResetState();
}

class _ResetState extends State<Reset> {
  late TextEditingController emailController;

  @override
  void initState() {
    emailController = TextEditingController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RESET"),
        backgroundColor: const Color.fromARGB(255, 115, 100, 215),
      ),
      body: Center(
        child: Container(
          width: 600,
          height: 500,
          padding: new EdgeInsets.all(10.0),
          child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Text("Reset Password"),
                  const ListTile(
                    title: Center(
                      child: Text("Reset Your Password",
                          style: TextStyle(
                              fontSize: 30.0, fontWeight: FontWeight.bold)),
                    ),
                    subtitle: Center(
                      child: Text('Enter Your Email Address',
                          style: TextStyle(fontSize: 18.0)),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.all(30),
                      child: EmailLabel(emailController: emailController)),
                  // Center(
                  //   // margin: const EdgeInsets.only(left: 500, right: 500),
                  //   child:
                  Center(
                    child: SizedBox(
                      height: 50,
                      width: 300,
                      child: OutlinedButton(
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
                          "Rest Your Password ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ), //child widget inside this button

                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => AlmostDone(),
                            ),
                          ); //task to execute when this button is pressed
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                            child: const Text("sign up ",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 88, 85, 129))));
                      }),
                    ],
                  ),
                ],
              )),
        ),
      ),
    );

    // TODO: implement build
    throw UnimplementedError();
  }
}
