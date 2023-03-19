import 'package:flutter/material.dart';

class Template {
  static scaffold(
      {Key? key,
      BuildContext? context,
      Size? preferredSize,
      Widget? apBarr,
      required Widget? body,
      double? top,
      double? left,
      double? right,
      double? bottom,
      Widget? floatButton,
      FloatingActionButtonLocation? floatPosition,
      Widget? bottomNavigationBar}) {
    return Scaffold(
      floatingActionButton: floatButton,
      floatingActionButtonLocation: floatPosition,
      bottomNavigationBar: bottomNavigationBar,
      appBar: preferredSize == null
          ? null
          : PreferredSize(preferredSize: preferredSize, child: apBarr!),
      body: Container(
        height: MediaQuery.of(context!).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(children: [
          Positioned(
              top: top, left: left, right: right, bottom: bottom, child: body!)
        ]),
      ),
    );
  }
}
