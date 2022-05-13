import 'dart:ui';

import 'package:flutter/material.dart';

/// A widget that provides glass effect for a [child],
/// Since color and dimensions of Container have to be in same Container, the childWIdget
/// has to specify gradient and borders by itself
class GlassFormCover extends StatelessWidget {
  final Widget child;
  final BorderRadius borderRadius;
  const GlassFormCover(
      {Key? key, required this.child, required this.borderRadius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            blurRadius: 24,
            spreadRadius: 16,
            color: Colors.black.withOpacity(0.1),
          )
        ]),
        child: ClipRRect(
          borderRadius: borderRadius,
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 40.0,
              sigmaY: 40.0,
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
