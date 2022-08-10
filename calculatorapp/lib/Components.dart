import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(
      {Key? key, required this.title,
      required this.onPress,
       this.color = const Color(0xffa5a5a5)})
      : super(key: key);

  final String title;
  final Color color;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: InkWell(
         onTap: onPress, 
          child: Container(
            height: 80,
            decoration: BoxDecoration(shape: BoxShape.circle, color: color),
            child: Center(
              child: Text(
                title,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
