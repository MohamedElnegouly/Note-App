import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        color: Colors.white.withValues(
          alpha: 0.03,
        ),
        borderRadius: BorderRadius.circular(13),
      ),
      child: Center(
        child: IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
      ),
    );
  }
}
