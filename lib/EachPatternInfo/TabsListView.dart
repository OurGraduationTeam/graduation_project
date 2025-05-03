import 'package:flutter/material.dart';

class TabsListView extends StatelessWidget {
  const TabsListView({
    super.key, required this.childs,
  });
final List<Widget> childs;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: childs,
    );
  }
}
