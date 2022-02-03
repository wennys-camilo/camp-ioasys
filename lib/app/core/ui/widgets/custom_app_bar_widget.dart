import '../themes/app_images.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String title;

  final List<Widget>? actions;

  @override
  final Size preferredSize;

  const CustomAppBar({
    Key? key,
    this.actions,
    required this.title,
  })  : preferredSize = const Size.fromHeight(60.0),
        super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Row(
        children: [
          Image.asset(AppImages.logoHome),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              widget.title,
              style: const TextStyle(fontSize: 15),
            ),
          ),
        ],
      ),
      actions: widget.actions,
    );
  }
}
