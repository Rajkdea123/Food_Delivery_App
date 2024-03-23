import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
 final Function()? onTop;
 final String text;

  const MyButton({
    super.key,
    required this.text,
    required this.onTop,
  });

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
        onTap: onTop,
        child: Container(
          padding: EdgeInsets.all(25),
          margin: EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(8),
          ),

          child: Center(
            child: Text(
              text,
            ),
          ),
        ));
  }
}
