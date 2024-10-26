// ignore_for_file: must_be_immutable

import 'package:ayurvedic_centre/view/widgets/text_font_widgets/google_poppins.dart';
import 'package:flutter/material.dart';

class SignUpTextFromFiled extends StatelessWidget {
  String text;
  String hintText;
  int? maxLines;
  int? maxLength;
  bool readOnly;
  TextInputType? keyboardType;
  // final TextEditingController textfromController;
  String? Function(String?)? validator;
  void Function()? onTapFunction;
  Widget? suffixIcon;
  Widget? prefixIcon;
  SignUpTextFromFiled({
    required this.text,
    required this.hintText,
    this.maxLines,
    this.maxLength,
    this.keyboardType,
    // required this.textfromController,
    this.validator,
    this.onTapFunction,
    this.suffixIcon,
    this.prefixIcon,
    this.readOnly = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: maxLines == 3 ? 170 : 90,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GooglePoppinsWidgets(
            fontsize: 16,
            fontWeight: FontWeight.w400,
            text: text,
          ),
          Center(
            child: TextFormField(
              onTap: onTapFunction,
              keyboardType: keyboardType,
              validator: validator,
              // controller: textfromController,
              readOnly: readOnly,
              maxLines: maxLines,
              maxLength: maxLength,
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xffd9d9d9).withOpacity(0.4),
                hintText: hintText,
                hintStyle: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.w300),
                isDense: true,
                prefixIcon: prefixIcon,
                suffixIcon: suffixIcon,
                border: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                  borderSide: BorderSide(
                    color: Colors.grey.shade400,
                    width: 1.0,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                  borderSide: BorderSide(
                    color: Colors.grey.shade400,
                    width: 1.0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                  borderSide: BorderSide(
                    color: Colors.grey.shade500,
                    width: 1.0,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
