import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_3_7_0/src/components/widgets/DefaultPage.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return DefaultPage(content: Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            RichText(text: const TextSpan(text: "Hokwe Services", style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500)), overflow: TextOverflow.ellipsis),

           const Icon(CupertinoIcons.location_solid, color: Colors.black, size: 14)

          ],
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            RichText(text: TextSpan(text: "What services are you looking for? ", style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500, color: Colors.black, letterSpacing: 1)))
          ],
        )

      ],
    ));
  }
}