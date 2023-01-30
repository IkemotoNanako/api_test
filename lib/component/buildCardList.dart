import 'package:flutter/material.dart';
import 'package:api_test/importer.dart';

class BuildCardList extends StatelessWidget {
  const BuildCardList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return ResultCard();
          }),
    );
  }
}
