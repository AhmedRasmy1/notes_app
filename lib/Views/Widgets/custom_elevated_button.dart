import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    this.onPressed,
    this.isLoading = false,
  });
  final void Function()? onPressed;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
          minimumSize: WidgetStatePropertyAll(
              Size(MediaQuery.of(context).size.width, 50)),
          backgroundColor: const WidgetStatePropertyAll(Color(0xff60ffd9)),
          shape: const WidgetStatePropertyAll(RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ))),
      child: isLoading
          ? const CircularProgressIndicator(color: Colors.black)
          : const Text(
              "Add Note",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
    );
  }
}
