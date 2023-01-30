import 'package:flutter/material.dart';
import 'package:api_test/importer.dart';

class ResultCard extends StatelessWidget {
  const ResultCard({Key? key, this.user}) : super(key: key);
  final GithubUser? user;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Container(
            height: 50,
            padding: const EdgeInsets.all(8.0),
            child: Image.network(this.user!.avatarUrl),
          ),
          Text(this.user!.login)
        ],
      ),
    );
  }
}
