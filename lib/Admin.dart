import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/PassLabel.dart';
import 'package:flutter_application_2/reset.dart';

import 'Sign_in.dart';
import 'SignupScreen.dart';

class Admin extends StatefulWidget {
  @override
  State<Admin> createState() => _AdminState();
}

class _AdminState extends State<Admin> {
  late TextEditingController passController;

  @override
  void initState() {
    passController = TextEditingController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Admin"),
        backgroundColor: const Color.fromARGB(255, 115, 100, 215),
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
                  Center(child: Icon(Icons.admin_panel_settings, size: 100)),
                  // Text("Reset Password"),
                  const ListTile(
                    // leading: Icon(Icons.admin_panel_settings, size: 100),
                    title: Center(
                      child: Text("Admin-only Area",
                          style: TextStyle(fontSize: 30.0)),
                    ),
                    subtitle: Center(
                      child: Text(
                        'You Need To Enter Your Password \n To Be able To Acess The Admin Area',
                        style: TextStyle(fontSize: 18.0),
                        textAlign: TextAlign.center,
                      ),
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
                            child: const Text("FORGET PASSWORD? ",
                                style: TextStyle(color: Colors.grey)));
                      }),
                    ],
                  ),
                  Center(
                    child: SizedBox(
                      height: 50,
                      width: 300,
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
                ],
              )),
        ),
      ),
    );

    // TODO: implement build
    throw UnimplementedError();
  }
}
