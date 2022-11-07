import 'dart:ui';
import 'package:flutter/material.dart';

class CustomDialog extends StatefulWidget {
  const CustomDialog({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;

  @override
  State<CustomDialog> createState() => _CustomDialogState();
}

class _CustomDialogState extends State<CustomDialog> {
  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
      child: Center(
        child: Dialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            margin: const EdgeInsets.all(20),
            width: double.infinity - 20,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: IntrinsicWidth(
              child: widget.child,
            ),
          ),
        ),
      ),
    );
  }
}
