import 'package:flutter/material.dart';

class RepassLabel extends StatefulWidget {
  final TextEditingController repassController;
  // final bool fadePassword;

  const RepassLabel({
    super.key,
    required this.repassController,
    // required this.fadePassword,
  });

  @override
  State<RepassLabel> createState() => _RepassLabelState();
}

class _RepassLabelState extends State<RepassLabel> {
  late TextEditingController repassController;
  bool passvisable = true;

  @override
  void initState() {
    repassController = widget.repassController;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: repassController,

      decoration: InputDecoration(
        fillColor: const Color.fromARGB(255, 83, 83, 82),
        filled: true,
        // labelText: "Your_rePassword ",
        labelStyle: const TextStyle(
            // color: Colors.white,
            fontSize: 20,
            fontStyle: FontStyle.italic),
        // hintText: "enter ur _pass",
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
      textAlign: TextAlign.center,
      // maxLines: 3,
      autocorrect: true,
      keyboardType: TextInputType.visiblePassword,
      obscureText: passvisable,
    );
  }
}
