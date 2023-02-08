import 'package:flutter/material.dart';

class EmailLabel extends StatefulWidget {
  final TextEditingController emailController;
  // final bool fadePassword;

  const EmailLabel({
    super.key,
    required this.emailController,
    // required this.fadePassword,
  });

  @override
  State<EmailLabel> createState() => _EmailLabelState();
}

class _EmailLabelState extends State<EmailLabel> {
  late TextEditingController emailController;
  @override
  void initState() {
    emailController = widget.emailController;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: const Color.fromARGB(255, 83, 83, 82),
        filled: true,
        // labelText: "Your_Email ",
        labelStyle: const TextStyle(
            // color: Colors.white,
            fontSize: 20,
            fontStyle: FontStyle.italic),
         hintText: "Email",
        suffixIcon: IconButton(
          icon: const Icon(
            Icons.email,
            // color: Colors.white,
            textDirection: TextDirection.rtl,
          ),
          onPressed: () {},
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                color: Color.fromARGB(255, 69, 68, 67), width: 5),
            borderRadius: BorderRadius.circular(10)),
      ),
      autocorrect: true,
      keyboardType: TextInputType.emailAddress,
      controller: emailController,
    );
  }
}
