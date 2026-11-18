import 'package:flutter/material.dart';
import 'package:cashier/ui/content_layout.dart';

void main() {
  runApp(const Cashier());
}

class Cashier extends StatelessWidget {
  const Cashier({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // styles debloat attempt
        splashFactory: NoSplash.splashFactory,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        focusColor: Colors.transparent,
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: Colors.grey,
          selectionColor: Color(0x44448AFF),
          selectionHandleColor: Colors.blueAccent,
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            elevation: WidgetStateProperty.all(0),
            shadowColor: WidgetStateProperty.all(Colors.transparent),
            overlayColor: WidgetStateProperty.all(Colors.transparent),
            mouseCursor: WidgetStateProperty.all(SystemMouseCursors.precise),
          ),
        ),

        inputDecorationTheme: const InputDecorationTheme(
          floatingLabelBehavior: FloatingLabelBehavior.never,
          focusedBorder: ShapedInputBorder(shape: ContinuousRectangleBorder()),
        ),
      ),
      home: Scaffold(backgroundColor: Colors.white, body: ContentLayout()),
    );
  }
}
