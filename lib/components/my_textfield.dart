import 'package:flutter/material.dart';
import 'package:flutter_starter/style/starter_colors.dart';

class MyTextfield extends StatefulWidget {
  final String label;
  final bool obscureText;
  final TextEditingController controller;
  final VoidCallback? onTap;
  final bool readOnly;
  final String? Function(String?)? validator;

  const MyTextfield({
    super.key,
    required this.label,
    required this.obscureText,
    required this.controller,
    this.onTap,
    this.readOnly = false,
    this.validator,
  });

  @override
  State<MyTextfield> createState() => _MyTextfieldState();
}

class _MyTextfieldState extends State<MyTextfield> {
  late FocusNode myFocusNode;

  @override
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
    myFocusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    myFocusNode.dispose();
    super.dispose();
  }

  void requestFocus() {
    setState(() {
      FocusScope.of(context).requestFocus(myFocusNode);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextFormField(
        controller: widget.controller,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 35,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: StarterColors.greyYoung.color,
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: StarterColors.lime.color, width: 2),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 1),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 2),
          ),
          labelText: widget.label,
          labelStyle: TextStyle(
            color:
                myFocusNode.hasFocus
                    ? StarterColors.lime.color
                    : StarterColors.greyYoung.color,
          ),
        ),
        obscureText: widget.obscureText,
        focusNode: myFocusNode,
        onTap: widget.onTap ?? requestFocus,
        readOnly: widget.readOnly,
        validator: widget.validator,
      ),
    );
  }
}
