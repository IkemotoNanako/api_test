import 'package:flutter/material.dart';
import 'package:api_test/importer.dart';
import 'package:url_launcher/url_launcher.dart';
import '../core/githubUser.dart';

class ResultCard extends StatelessWidget {
  const ResultCard({Key? key, this.user}) : super(key: key);
  final GithubUser? user;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        // launchUrl(Uri.parse(this.user!.htmlUrl));
        final url = Uri.parse(this.user!.htmlUrl);
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
              child: Image.network(this.user!.avatarUrl),
            ),
            Text(this.user!.login)
          ],
        ),
      ),
    );
  }
}
