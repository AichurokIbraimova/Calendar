import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final Color colors;
  final void Function()? onPressed;
  const CustomButton({
    super.key,
    required this.text,
    this.style,
    required this.colors,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 169,
      height: 32,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: colors,
        ),
        onPressed: () {},
        child: Text(
          text,
          style: style,
        ),
      ),
    );
  }
}
