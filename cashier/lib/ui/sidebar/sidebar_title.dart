import 'package:flutter/material.dart';

class SidebarTitle extends StatelessWidget {
  final String imagePath;
  
	const SidebarTitle({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
		return Padding(
			padding: const EdgeInsets.only(bottom: 20),
			child: Image.asset(imagePath, scale: 3)
		);
	}
}
