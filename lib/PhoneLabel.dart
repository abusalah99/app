import 'package:flutter/material.dart';

class PhoneLabel extends StatefulWidget {
  final TextEditingController phoneController;
  // final bool fadePassword;

  const PhoneLabel({
    super.key,
    required this.phoneController,
    // required this.fadePassword,
  });

  @override
  State<PhoneLabel> createState() => _PhoneLabelState();
}

class _PhoneLabelState extends State<PhoneLabel> {
  late TextEditingController phoneController;
  @override
  void initState() {
    phoneController = widget.phoneController;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: const Color.fromARGB(255, 83, 83, 82),
        filled: true,
        // labelText: "Your_Phone ",
        labelStyle: const TextStyle(
            // color: Colors.white,
            fontSize: 20,
            fontStyle: FontStyle.italic),
        // hintText: "enter ur _Email",
        suffixIcon: IconButton(
          icon: const Icon(
            Icons.phone,
            // color: Colors.white,
            textDirection: TextDirection.rtl,
          ),
          onPressed: () {},
        ),
        enabledBorder: OutlineInputBorder(
            // ignore: prefer_const_constructors
            borderSide: BorderSide(
                color: const Color.fromARGB(255, 69, 68, 67), width: 5),
            borderRadius: BorderRadius.circular(10)),
      ),
      autocorrect: true,
      keyboardType: TextInputType.phone,
      controller: phoneController,
    );
  }
}
