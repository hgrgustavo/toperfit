import 'package:flutter/material.dart';

class TableQuery extends StatelessWidget {
  static const double _TEXT_FONT_SIZE = 20;
  static const double _INPUT_SIZED_BOX_HEIGHT = 60;
  static const double _BUTTON_SIZED_BOX_HEIGHT = _INPUT_SIZED_BOX_HEIGHT - 12;

	
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              spacing: 10,
              children: [
                Text(
                  "Members amount",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: _TEXT_FONT_SIZE,
                  ),
                ),
                Text(
                  "_placeholder_",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                    fontSize: _TEXT_FONT_SIZE,
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              spacing: 10,
              children: [
                SizedBox(
                  width: 350,
                  height: _INPUT_SIZED_BOX_HEIGHT,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search',
                      border: ShapedInputBorder(
                        shape: ContinuousRectangleBorder(),
                      ),
                    ),
                  ),
                ),
                // feat: add a filter widget
                SizedBox(
                  width: 130,
                  height: _BUTTON_SIZED_BOX_HEIGHT,
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.add),
                    label: Text('Add member'),
                    style: ButtonStyle(
                      fixedSize: WidgetStateProperty.resolveWith(
                        (states) => Size(200, 60),
                      ),
                      backgroundColor: WidgetStateProperty.resolveWith(
                        (states) => Colors.black,
                      ),
                      foregroundColor: WidgetStateProperty.resolveWith(
                        (states) => Colors.white,
                      ),
                      shape: WidgetStateProperty.resolveWith(
                        (states) => ContinuousRectangleBorder(),
                      ),
                      padding: WidgetStateProperty.resolveWith(
                        (states) => EdgeInsets.zero,
                      ),
                      minimumSize: WidgetStateProperty.resolveWith(
                        (states) => Size.zero,
                      ),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      visualDensity: VisualDensity.compact,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Table(
					children: <TableRow>[
						TableRow(
						
					)
				]),
      ],
    );
  }
}
