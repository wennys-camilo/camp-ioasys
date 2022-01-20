import 'package:flutter/material.dart';

class RoundedButtonWidget extends StatelessWidget {
  final void Function()? onPressed;
  final Color? color;
  final Widget child;
  const RoundedButtonWidget(
      {Key? key, required this.onPressed, this.color, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: TextButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(vertical: 20, horizontal: 40)),
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (states) {
                if (states.contains(MaterialState.disabled)) {
                  return Theme.of(context).primaryColor.withAlpha(100);
                }
                return color ?? Theme.of(context).primaryColor;
              },
            ),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          onPressed: onPressed,
          child: child,
        ),
      ),
    );
  }
}
