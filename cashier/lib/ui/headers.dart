import 'package:flutter/material.dart';

class Headers extends StatelessWidget {
  final String mainHeaderContent;
  final String subHeaderContent;
	
	static const double _MAIN_FONT_SIZE = 40;
	static const double _SUB_FONT_SIZE = _MAIN_FONT_SIZE / 2;

  const Headers({
    super.key,
    required this.mainHeaderContent,
    required this.subHeaderContent,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
					mainHeaderContent,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: _MAIN_FONT_SIZE,
          ),
        ),
        Text(
					subHeaderContent,
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            fontSize: _SUB_FONT_SIZE,
          ),
        ),
      ],
    );
  }
}
