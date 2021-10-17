import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';
import 'circle_image.dart';

class AuthorCard extends StatelessWidget {
  final String authorName;
  final String title;
  final ImageProvider imageProvider;

  const AuthorCard({
    Key? key,
    required this.authorName,
    required this.title,
    required this.imageProvider,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            CircleImage(imageProvider: imageProvider, imageRadius: 28),
            const SizedBox(width: 8),
            Column(
              children: [
                Text(
                  authorName,
                  style: FooderlichTheme.darkTextTheme.headline2,
                ),
                Text(
                  title,
                  style: FooderlichTheme.darkTextTheme.headline3,
                )
              ],
            ),
          ]),
          IconButton(
              icon: Icon(Icons.favorite_border),
              iconSize: 30,
              color: Colors.grey[400],
              onPressed: () {
                const snackBar = SnackBar(content: Text('Pressed Favourite'));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              })
        ],
      ),
    );
  }
}
