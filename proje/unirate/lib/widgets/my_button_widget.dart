import 'package:flutter/material.dart';

class MyButtonWidget extends StatelessWidget {
  const MyButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: MaterialButton(
        height: 55,
        elevation: 0,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        onPressed: () {},
        child: Text(
          "click",
          style: TextStyle(fontSize: 30, color: Colors.green.shade400),
        ),
      ),
    );
  }
}
