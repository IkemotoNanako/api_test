import 'package:api_test/component/switchOrganization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../component/searchFeild.dart';
import '../view_model/buildCardList.dart';

class Top extends ConsumerWidget {
  const Top({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Column(
          children: [SearchField(), SwitchOrganization(), BuildCardList()]),
    );
  }
}
