import 'package:flutter/material.dart';

class NameLabel extends StatefulWidget {
  final TextEditingController nameController;
  // final bool fadePassword;

  const NameLabel({
    super.key,
    required this.nameController,
    // required this.fadePassword,
  });

  @override
  State<NameLabel> createState() => _NameLabelState();
}

class _NameLabelState extends State<NameLabel> {
  late TextEditingController nameController;
    @override

  void initState() {
    nameController = widget.nameController;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: const Color.fromARGB(255, 83, 83, 82),
        filled: true,
        // labelText: "Your Name ",
        labelStyle: const TextStyle(
            // color: Colors.white,
            fontSize: 20,
            fontStyle: FontStyle.italic),
        // hintText: "enter ur name",
        // icon: Icon(
        //   Icons.person,
        //   color: Colors.white,
        //   textDirection: TextDirection.ltr,
        // ),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                color: Color.fromARGB(255, 83, 83, 82), width: 5),
            borderRadius: BorderRadius.circular(10)),
      ),
      controller: nameController,
      autocorrect: true,
      keyboardType: TextInputType.text,
    );
  }
}
