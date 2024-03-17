import 'package:flutter/material.dart';
import 'custom_text.dart';

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final String hint;

  final Function(String?) onSave;
  final String? Function(String?)? validator;

  const CustomTextFormField({
    super.key,
    this.labelText = '',
    this.hint = '',
    required this.onSave,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: labelText,
          fontSize: 14,
          color: Colors.grey,
        ),
        TextFormField(
          onSaved: onSave,
          validator: validator,
          decoration: InputDecoration(hintText: hint),
          keyboardType: TextInputType.emailAddress,
        ),
      ],
    );
  }
}
