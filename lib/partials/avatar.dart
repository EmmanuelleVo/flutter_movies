import 'package:flutter/material.dart';
import 'package:movies/styles/constants.dart';

class Avatar extends StatelessWidget {
  const Avatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(18)), //ou 24?
        boxShadow: boxShadowItem,
      ),
      child: const Image(
        image: AssetImage('assets/img/dog.jpg'),
        width: defaultWidth,
        height: defaultWidth,
      ),
    );
  }
}
