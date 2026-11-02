import 'package:flutter/material.dart';
import 'package:cashier/ui/content_layout.dart';
import 'package:cashier/ui/sidebar/sidebar.dart';
import 'package:cashier/ui/sidebar/sidebar_title.dart';
import 'package:cashier/ui/headers.dart';

class Members extends State<ContentLayout> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Sidebar(
          title: SidebarTitle(
            imagePath:
                '/home/hgrgustavo/gym/cashier/lib/ui/sidebar/toperfit.jpg',
          ),
          selectedIndex: _selectedIndex,
          callbackWithIndex: (newIndex) {
            setState(() {
              _selectedIndex = newIndex;
            });
          },
        ),
        Expanded(
          child: Container(
            margin: EdgeInsetsGeometry.all(10),
            padding: EdgeInsetsGeometry.all(0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2),
            ),
            child: Column( // MemberTitles area
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Headers(mainHeaderContent: "Members", subHeaderContent: "A view of all members, ready for management."),
                Row( // TableQueries area
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
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "_placeholder_",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
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
                          height: 60,
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              labelText: 'Search',
                              border: ShapedInputBorder(shape: ContinuousRectangleBorder()),
                            ),
                          ),
                        ),
                        // feat: add a filter widget
                        SizedBox(
                          width: 130,
                          height: 48,
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
                Divider(height: 1, color: Colors.grey)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
