import 'package:flutter/material.dart';


class DefaultPage extends StatelessWidget
{
  const DefaultPage({super.key, required this.content, this.context, this.appBar, this.bottomNavigationBar});

  final BuildContext? context;
  final PreferredSizeWidget? appBar;
  final Widget content;
  final Widget? bottomNavigationBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: false,
      extendBodyBehindAppBar: false,
      // appBar: appBar,
      body: Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: content)
      //bottomNavigationBar: bottomNavigationBar,
    );
  }
}