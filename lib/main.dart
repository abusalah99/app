import 'package:flutter/material.dart';
import 'package:flutter_application_2/Admin.dart';
import 'package:flutter_application_2/AlmostDone.dart';
import 'package:flutter_application_2/Splash.dart';
import 'package:flutter_application_2/theme.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'SignupScreen.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

// void main() => runApp(MyApp());

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences.getInstance().then((prefs) {
    var isDarkTheme = prefs.getBool("darkTheme") ?? false;
    //todo read from sharepre
    return runApp(
      ChangeNotifierProvider(
        create: (BuildContext context) => ThemeProvider(true),
        child: MyApp(),
      ),
    );
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //use provider to select shareperfrances
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "slider of images",
          theme: themeProvider.getTheme(),
          home: Splash(),
        );
      },
    );
  }
}


// class MyHomePage extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {


//   @override

//   Widget build(BuildContext context) {
//      return
//      MaterialApp(
//                  debugShowCheckedModeBanner: false,
//               theme: ThemeData.light(),
//               home: Scaffold(appBar: AppBar()),
//             );
//   }

// }







/////////////////////
///     // child: MaterialApp(
      //   debugShowCheckedModeBanner: false,
      //   title: "slider of images",
      //   theme: ThemeData.light(),
      //   home: Sign(),
      // ),
