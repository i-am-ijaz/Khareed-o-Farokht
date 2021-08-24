import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.text, required this.onPressed,
  }) : super(key: key);

  final String? text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed!,
      child: Text(
        text!,
        style: Theme.of(context).textTheme.headline4!.copyWith(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
      ),
    );
  }
}
