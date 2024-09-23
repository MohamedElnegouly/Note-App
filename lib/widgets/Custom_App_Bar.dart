import 'package:flutter/material.dart';
import 'package:note_app/widgets/Custom_Search_Icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.icon,
    this.onpressed,
  });
  final String title;
  final IconData icon;
  final void Function()? onpressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 28,
          ),
        ),
        const Spacer(),
        CustomSearchIcon(
          icon: icon,
          onPressed: onpressed,
        ),
      ],
    );
  }
}
