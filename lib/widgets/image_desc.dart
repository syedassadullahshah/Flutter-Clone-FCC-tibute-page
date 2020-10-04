import 'package:flutter/material.dart';

class ImageWithDesc extends StatelessWidget {
  const ImageWithDesc({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.all(20.0),
      color: Colors.white,
      child: Column(
        children: [
          Image.network(
            'https://c2.staticflickr.com/4/3689/10613180113_fdf7bcd316_b.jpg',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            'Dr. Norman Borlaug, third from the left, trains biologists in Mexico on how to increase wheat yields - part of his life-long war on hunger.',
            style: Theme.of(context)
                .textTheme
                .bodyText1
                .copyWith(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
