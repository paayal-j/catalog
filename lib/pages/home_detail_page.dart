// ignore_for_file: public_member_api_docs, sort_constructors_first, deprecated_member_use
import 'package:flutter/material.dart';
import 'package:flutter_codepur/widgets/home_widgets/add_to_cart.dart';
import 'package:flutter_codepur/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import '../books/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({
    Key? key,
    required this.catalog,
  })  : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: context.canvasColor,
        bottomNavigationBar: Container(
          color: context.cardColor,
          child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: EdgeInsets.all(8),
            children: [
              "\$${catalog.price}".text.bold.xl4.red800.make(),
              AddToCart(
                catalog: catalog,
              ).wh(120, 50)
            ],
          ).p16(),
        ),
        body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Hero(
                      tag: Key(catalog.id.toString()),
                      child: Image.network(catalog.image))
                  .h32(context),
              Expanded(
                  child: VxArc(
                height: 20.0,
                arcType: VxArcType.CONVEX,
                edge: VxEdge.TOP,
                child: Container(
                  color: context.cardColor,
                  width: context.screenWidth,
                  child: Column(children: [
                    catalog.name.text.center.xl3.italic
                        .color(context.accentColor)
                        .bold
                        .make(),
                    catalog.desc.text.center
                        .textStyle(context.captionStyle)
                        .xl
                        .make(),
                    5.heightBox,
                    "Vestibulum et dictum ipsum Fusce tempus dolor et sem vulputate tristique. Mauris dapibus metus sed tempus rutrum. Ut vel rhoncus quam, at elementum velit. Aenean interdum bibendum ante, sodales sagittis ex vestibulum auctor. Morbi tincidunt nec sapien non interdum. Vestibulum pellentesque ex quis eros volutpat, et pellentesque sapien euismod. "
                        .text
                        .justify
                        .textStyle(context.captionStyle)
                        .make()
                        .p16(),
                  ]).py8(),
                ).scrollVertical().p(20),
              ))
            ],
          ),
        ));
  }
}
