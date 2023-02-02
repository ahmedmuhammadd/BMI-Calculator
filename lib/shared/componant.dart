import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  double radius = 0.0,
  Color background = Colors.blue,
  bool isUppercase = true,
  @required String text,
  @required Function function,
}) =>
    Container(
      width: width,
      child: MaterialButton(
        child: Text(
          isUppercase ? text.toLowerCase() : text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        onPressed: function,
      ),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(radius),
      ),
    );

Widget defaultFormField({
  TextInputType keyboardType,
  @required Function validator,
  Function onChanged,
  Function onFieldSubmitted,
  @required TextEditingController controller,
  @required String labelText,
  @required IconData prefix,
}) =>
    TextFormField(
      keyboardType: keyboardType,
      controller: controller,
      validator: validator,
      onChanged: onChanged,
      onFieldSubmitted: onFieldSubmitted,
      decoration: InputDecoration(
        prefix: Icon(prefix),
        labelText: labelText,
        border: OutlineInputBorder(),
      ),
    );
