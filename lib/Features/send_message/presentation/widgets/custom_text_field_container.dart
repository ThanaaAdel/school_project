import 'package:flutter/material.dart';

class CustomTextFieldContainer extends StatelessWidget {
  const CustomTextFieldContainer({
    super.key,
    required this.height,
    required this.validator,
  });
  final double height;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, top: 20),
      child: Container(
        height: height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: TextFormField(
          validator: validator,
          maxLines: null, // Set this to allow multiline input
          decoration: const InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(12.0),
          ),
        ),
      ),
    );
  }
}
