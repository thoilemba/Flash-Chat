import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {

  final Color colour;
  final String buttonTitle;
  final void Function() onPress;


  const RoundedButton({super.key,  required this.colour, required this.buttonTitle, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colour,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: () {
            //Go to login screen.
            onPress();
          },
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            buttonTitle,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}