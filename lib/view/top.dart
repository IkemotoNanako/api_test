import 'package:api_test/component/switchOrganization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// file名は snake_case でかくべき
/// Feild -> field  スペルミスも注意
import '../component/searchFeild.dart';
import '../view_model/buildCardList.dart';

class Top extends ConsumerWidget {
  const Top({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Center(
        /// 要素ごとに分解できているのはよい
        child: Column(children: const [
          /// SafeArea などで囲まないと、検索できない端末が存在している
          SearchField(),
          SwitchOrganization(),
          BuildCardList()
        ]),
      ),
    );
  }
}
