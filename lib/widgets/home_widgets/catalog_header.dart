import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_codepur/widgets/themes.dart';

class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      "Novelflix".text.xl5.bold.color(Colors.deepPurple).make(),
      "Trending Books".text.xl.make()
    ]);
  }
}
