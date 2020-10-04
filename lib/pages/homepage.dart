import 'package:flutter/material.dart';

import '../widgets/image_desc.dart';
import '../widgets/timeline_builder.dart';
import '../widgets/quote_embed.dart';
import '../widgets/wiki_launcer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Dr. Norman Borlaug',
                  style: Theme.of(context).textTheme.headline1,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'The man who saved a billion lives',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                ImageWithDesc(),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  "Here's a time line of Dr. Borlaug's life:",
                  style: Theme.of(context).textTheme.headline2,
                ),
                TimelineBuilder(),
                SizedBox(
                  height: 20,
                ),
                QuoteEmbed(),
                WikiWebLauncher(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
