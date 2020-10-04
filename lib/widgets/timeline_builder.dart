import 'package:flutter/material.dart';

import '../data/timeline_list.dart';

class TimelineBuilder extends StatelessWidget {
  const TimelineBuilder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 1200,
      child: ListView.builder(
        itemCount: timeline.length,
        itemBuilder: ((context, index) {
          return ListTile(
            leading: Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.fiber_manual_record,
                ),
                Text(
                  '  ${timeline[index].year} -',
                  style: Theme.of(context).textTheme.headline3,
                )
              ],
            ),
            title: Text(
              timeline[index].info,
              textAlign: TextAlign.justify,
            ),
          );
        }),
      ),
    );
  }
}
