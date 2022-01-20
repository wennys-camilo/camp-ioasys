import '../themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RoundedInputWidget extends StatelessWidget {
  final FormFieldValidator<String>? validator;
  final bool? obscureText;
  final void Function()? onPressed;
  final String? hintText;
  final IconData? iconData;
  final FocusNode? focusNode;
  final List<TextInputFormatter>? inputFormatters;
  final bool noBorder;
  final TextInputType? keyboardType;
  final void Function(String)? onChanged;
  final String? labelText;
  final TextEditingController? controller;
  const RoundedInputWidget(
      {Key? key,
      this.validator,
      this.inputFormatters,
      this.onChanged,
      this.labelText,
      this.controller,
      this.obscureText = false,
      this.hintText,
      this.noBorder = false,
      this.focusNode,
      this.iconData,
      this.keyboardType,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      child: TextFormField(
        obscureText: obscureText!,
        onChanged: onChanged,
        controller: controller,
        inputFormatters: inputFormatters,
        autocorrect: false,
        cursorColor: Theme.of(context).primaryColor,
        validator: validator,
        keyboardType: keyboardType,
        focusNode: focusNode,
        decoration: InputDecoration(
          labelText: labelText,
          fillColor: AppColors.white,
          isDense: true,
          filled: true,
          hintText: hintText,
          prefixIcon:
              iconData != null ? Icon(iconData, color: Colors.grey) : null,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
          border: noBorder
              ? null
              : OutlineInputBorder(
                  borderRadius: BorderRadius.circular(noBorder ? 0 : 20),
                ),
          enabledBorder: noBorder
              ? null
              : OutlineInputBorder(
                  borderRadius: BorderRadius.circular(noBorder ? 0 : 20),
                  borderSide: BorderSide(
                    color: AppColors.white,
                    width: 2,
                  ),
                ),
          focusedBorder: noBorder
              ? null
              : OutlineInputBorder(
                  borderRadius: BorderRadius.circular(noBorder ? 0 : 20),
                  borderSide: BorderSide(
                    color: AppColors.blue,
                    width: 2,
                  ),
                ),
        ),
      ),
    );
  }
}
