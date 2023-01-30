import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.search),
          hintText: '探したいユーザー名を入力',
          labelText: "検索"),
      onChanged: (text) {},
    );
  }
}
