import 'package:flutter/material.dart';
import 'package:flutter_application_2/Reset.dart';

import 'SignupScreen.dart';

class AlmostDone extends StatefulWidget {
  @override
  State<AlmostDone> createState() => _AlmostDoneState();
}

class _AlmostDoneState extends State<AlmostDone> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Almost Done !",
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
        backgroundColor: const Color.fromARGB(255, 115, 100, 215),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => Reset(),
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
                  ListTile(
                    // leading: Icon(Icons.admin_panel_settings, size: 100),
                    title: Center(
                      child: Text("Almost Done !",
                          style: TextStyle(
                              fontSize: 30.0, fontWeight: FontWeight.bold)),
                    ),

                    subtitle: Center(
                      child: Column(
                        children: [
                          const Text("Last Step",
                              style: TextStyle(fontSize: 17.0)),
                          Icon(Icons.verified_rounded),
                          Text(
                            'Thank You  !  \n We Will Send Email To',
                            style: TextStyle(fontSize: 18.0),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            " Acc@gmail.com ",
                            style: TextStyle(
                              color: Color.fromARGB(255, 115, 100, 215),
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "click to confirm link in your inbox \n to verify your accout",
                            style: TextStyle(fontSize: 17.0),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
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
                          "Open Email App ",
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
