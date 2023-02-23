import 'package:flutter/material.dart';
import 'package:gomoonapp/pages/home_pages.dart';

class DropDownButtonCustom extends StatelessWidget {
  List<String> values;
  double width;
  DropDownButtonCustom({required this.values, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      width: width,
      decoration: BoxDecoration(
        color: Color.fromRGBO(53, 53, 53, 1.0),
        borderRadius: BorderRadius.circular(15),
      ),
      child: DropdownButton(
        value: values.first,
        onChanged: (_) {},
        items: values.map(
          (e) {
            return DropdownMenuItem(
              value: e,
              child: Text(e),
            );
          },
        ).toList(),
        underline: Container(),
        dropdownColor: const Color.fromRGBO(53, 53, 53, 1.0),
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
