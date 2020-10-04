import 'package:flutter/material.dart';
import 'package:blockquote/blockquote.dart';

class QuoteEmbed extends StatelessWidget {
  const QuoteEmbed({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      child: BlockQuote(
        outerPadding: const EdgeInsets.all(20),
        blockColor: Colors.blueAccent,
        blockWidth: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Borlaug\'s life and achievement are testimony to the far-reaching contribution that one man\'s towering intellect, persistence and scientific vision can make to human peace and progress',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 16,
              ),
            ),
            Text(
              '~ Indian Prime Minister Manmohan Singh',
              textAlign: TextAlign.end,
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}
