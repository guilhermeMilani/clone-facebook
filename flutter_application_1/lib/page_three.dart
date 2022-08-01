import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'page_one.dart';

class PageThree extends StatelessWidget {
  const PageThree({Key? key}) : super(key: key);
  static const route = '/page-three';
  @override
  Widget build(BuildContext context) {
    final valueMap = ModalRoute.of(context)!.settings.arguments as Map;
    final fruta = valueMap['frutas'];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page three'),
      ),
      body: Center(
        child: Column(
          children: [
            FractionallySizedBox(
              widthFactor: 0.3,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(PageOne.route);
                },
                child: const Text("Return page one"),
              ),
            ),
            FractionallySizedBox(
              widthFactor: 0.5,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.brown,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: AutoSizeText(
                        fruta,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1,
                        textAlign: TextAlign.center,
                        minFontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
