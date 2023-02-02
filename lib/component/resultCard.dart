import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../core/githubUser.dart';

class ResultCard extends StatelessWidget {
  const ResultCard({
    Key? key,
    required this.user,
  }) : super(key: key);

  /// null許容にする意味はない。
  /// しなくてもいい時は non-nullable にすること。
  final GithubUser user;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final url = Uri.parse(user.htmlUrl);
        if (await canLaunchUrl(url)) {
          launchUrl(url);
        }
      },
      child: Card(
        child: Row(
          children: [
            Container(
              height: 50,
              padding: const EdgeInsets.all(8.0),
              child: Image.network(user.avatarUrl),
            ),
            Text(user.login)
          ],
        ),
      ),
    );
  }
}
