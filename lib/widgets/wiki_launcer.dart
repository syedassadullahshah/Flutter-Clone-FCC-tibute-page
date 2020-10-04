import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WikiWebLauncher extends StatelessWidget {
  const WikiWebLauncher({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Flexible(
          fit: FlexFit.loose,
          child: Text(
            'If you have time, you should read more about this incredible human being on his ',
            style: Theme.of(context).textTheme.headline3,
          ),
        ),
        InkWell(
          onTap: () async {
            final String url = 'https://en.wikipedia.org/wiki/Norman_Borlaug';

            if (await canLaunch(url)) {
              await launch(url);
            } else {
              throw "Couldn't launch URL";
            }
          },
          child: Text(
            'Wikipedia entry.',
            style: Theme.of(context).textTheme.headline3.copyWith(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
          ),
        ),
      ],
    );
  }
}
