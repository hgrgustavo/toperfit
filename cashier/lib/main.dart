import 'package:flutter/material.dart';
import 'package:cashier/ui/sidebar/sidebar.dart';
import 'package:cashier/ui/sidebar/sidebar_title.dart';
import 'package:cashier/ui/content_layout.dart';

void main() {
  runApp(const Cashier());
}

class Cashier extends StatelessWidget {
  const Cashier({super.key});

		@override
		Widget build(BuildContext context) {
		return MaterialApp(
			home: Scaffold(
				backgroundColor: Colors.white,
				body: ContentLayout(),
			),
		);
		} 
}
