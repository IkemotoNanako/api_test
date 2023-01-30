import 'package:flutter/material.dart';

class ResultCard extends StatelessWidget {
  const ResultCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Container(
            height: 50,
            padding: const EdgeInsets.all(8.0),
            child: Image.network(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("ユーザー名"),
                Text(
                  "詳細～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～～",
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
