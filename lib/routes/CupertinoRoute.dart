import 'package:flutter/material.dart';

class CupertinoRoute extends PageRouteBuilder {
  final Widget enterPage;
  CupertinoRoute({required this.enterPage})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) {
            return enterPage;
          },
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) {
            return Stack(
              children: <Widget>[
                // SlideTransition(
                //   position: Tween<Offset>(
                //     begin: const Offset(0.0, 0.0),
                //     end: const Offset(-0.33, 0.0),
                //   ).animate(
                //     CurvedAnimation(
                //       parent: animation,
                //       curve: Curves.linearToEaseOut,
                //       reverseCurve: Curves.easeInToLinear,
                //     ),
                //   ),
                //   child: exitPage,
                // ),
                SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(1.0, 0.0),
                    end: Offset.zero,
                  ).animate(
                    CurvedAnimation(
                      parent: animation,
                      curve: Curves.linearToEaseOut,
                      reverseCurve: Curves.easeInToLinear,
                    ),
                  ),
                  child: enterPage,
                )
              ],
            );
          },
        );
}
