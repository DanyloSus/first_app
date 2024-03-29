import 'package:flutter/material.dart';

import "dart:math";

const textStyle =
    TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 16);

class Content extends StatefulWidget {
  const Content({
    super.key,
  });

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  Texts texts = Texts(["Danylo", "Empat", "#0056B9", "Я", "Я ось", "У мене"],
      ["Sushko", "Tech", "#FFD800", "Вася Пупкін", "усе змінив", "все вийшло"]);

  void _updateStep() {
    setState(() {
      texts.step = Random().nextInt(texts.firstTexts.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 12,
          children: [
            Text(texts.firstTexts[texts.step], style: textStyle),
            Text(texts.secondTexts[texts.step], style: textStyle),
          ],
        ),
        TextButton(
          onPressed: _updateStep,
          child: const Text(
            "Button",
            style: textStyle,
          ),
        )
      ],
    );
  }
}

class Texts {
  Texts(this._firstTexts, this._secondTexts);

  int _step = 0;

  List<String> _firstTexts;
  List<String> _secondTexts;

  int get step => _step;

  List<String> get firstTexts => _firstTexts;
  List<String> get secondTexts => _secondTexts;

  set step(newStep) => _step = newStep;

  set firstTexts(newTexts) => _firstTexts = newTexts;
  set secondTexts(newTexts) => _secondTexts = newTexts;
}
