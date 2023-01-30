import 'package:flutter/material.dart';
import 'package:api_test/importer.dart';

class Top extends StatelessWidget {
  const Top({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [SearchField(), BuildCardList()]),
    );
  }
}
