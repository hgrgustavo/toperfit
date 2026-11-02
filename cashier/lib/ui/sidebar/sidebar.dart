import 'package:flutter/material.dart';
import 'package:cashier/ui/sidebar/sidebar_title.dart';

class Sidebar extends StatelessWidget {
  final SidebarTitle title;
	final selectedIndex;
	final ValueChanged<int> callbackWithIndex;

  const Sidebar({
		super.key,
		required this.title,
		required this.selectedIndex,
		required this.callbackWithIndex
	});

	@override
  Widget build(context) {
    return Container(
      alignment: AlignmentGeometry.topLeft,
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.black),
        color: Colors.white,
      ),
      child: Wrap(
        spacing: 6,
        direction: Axis.vertical,
        children: <Widget>[
          title,
          Container(
						margin: EdgeInsetsGeometry.all(6),
            child: Wrap(
              children: <TextButton>[
								TextButton.icon(
									onPressed: () => selectedIndex == 0 ? callbackWithIndex(0) : null,
									icon: const Icon(Icons.people_alt, size: 30),
									label: const Text("Membros", style: TextStyle(fontSize: 20)),
									style: TextButton.styleFrom(
										iconColor: Colors.black,
										foregroundColor: Colors.black
									)
								) 
              ],
            ),
          ),
        ],
      ),
    );
  }
}
