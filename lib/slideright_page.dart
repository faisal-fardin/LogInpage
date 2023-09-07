import 'package:flutter/material.dart';

class SlideRightRoute extends PageRouteBuilder<double> {
  final Widget page;
  SlideRightRoute({required this.page}):
        super(pageBuilder : (
          BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
          ) =>  page,
      transitionsBuilder: (
      BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryanimation,
          Widget child,
      ) =>
          SlideTransition(
              position: Tween<Offset>(
                begin: Offset(-1, 0),
                end: Offset.zero,
          ).animate(animation),
            child: child,
          ),
        ) {
  }
}
