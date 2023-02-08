import 'package:flutter/material.dart';

class PassLabel extends StatefulWidget {
  final TextEditingController passController;
  // final bool fadePassword;

  const PassLabel({
    super.key,
    required this.passController,
    // required this.fadePassword,
  });

  @override
  State<PassLabel> createState() => _PassLabelState();
}

class _PassLabelState extends State<PassLabel> {
  late TextEditingController passController;
  bool passvisable = true;

  @override
  void initState() {
    passController = widget.passController;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: passController,
      decoration: InputDecoration(
        fillColor: const Color.fromARGB(255, 83, 83, 82),
        filled: true,
        // labelText: "Your_Password ",
        labelStyle: const TextStyle(
            // color: Colors.white,
            fontSize: 20,
            fontStyle: FontStyle.italic),
        hintText: "Password",
        suffixIcon: IconButton(
          icon: Icon(
            passvisable ? Icons.visibility : Icons.visibility_off,
            // color: Colors.white,
          ),
          onPressed: (() {
            setState(() {
              passvisable = !passvisable;
            });
          }),
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                color: Color.fromARGB(255, 69, 68, 67), width: 5),
            borderRadius: BorderRadius.circular(10)),
      ),
      textAlign: TextAlign.left,
      // maxLines: 3,
      autocorrect: true,
      keyboardType: TextInputType.visiblePassword,
      obscureText: passvisable,
    );
  }
}
