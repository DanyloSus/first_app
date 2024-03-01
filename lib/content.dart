import 'package:flutter/material.dart';

class Content extends StatefulWidget {
  const Content({super.key});

  @override
  State<Content> createState() {
    return _ContentState();
  }
}

const textStyle = TextStyle(color: Colors.white, fontWeight: FontWeight.w500);

class _ContentState extends State<Content> {
  final List<String> _firstTexts = ["Danylo", "Empat"];
  final List<String> _secondTexts = ["Sushko", "Tech"];

  int step = 0;

  void _updateStep() {
    setState(() {
      step = (step + 1) % _firstTexts.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_firstTexts[step], style: textStyle,),
            const SizedBox(width: 12,),
            Text(_secondTexts[step],style: textStyle,),
          ],
        ),
        TextButton(
          onPressed: _updateStep,
          child: const Text(
            "Button",
            style: textStyle
          ),
        )
      ],
    );
  }
}