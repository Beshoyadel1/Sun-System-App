import 'package:flutter/material.dart';

enum NavigateType {
  push,           // Normal push (keep stack)
  replace,        // Replace current page
  removePrevious, // Pop one, then push
  clearAll,       // Remove all and push
}

class NavigateToPageWidget<T> extends PageRouteBuilder<T> {
  final Widget page;

  NavigateToPageWidget(this.page)
      : super(
    pageBuilder: (context, animation, anotherAnimation) => page,
    transitionDuration: const Duration(milliseconds: 500),
    transitionsBuilder: (context, animation, anotherAnimation, child) {
      animation = CurvedAnimation(
        curve: Curves.fastLinearToSlowEaseIn,
        parent: animation,
      );
      return Align(
        alignment: Alignment.bottomCenter,
        child: SizeTransition(
          sizeFactor: animation,
          axisAlignment: 0,
          child: child,
        ),
      );
    },
  );

  /// Flexible navigation method
  static Future<T?> navigate<T>(
      BuildContext context,
      Widget page, {
        NavigateType type = NavigateType.push,
      }) {
    final route = NavigateToPageWidget<T>(page);

    switch (type) {
      case NavigateType.push:
        return Navigator.push<T>(context, route);

      case NavigateType.replace:
        return Navigator.pushReplacement<T, T>(context, route);

      case NavigateType.removePrevious:
        Navigator.pop(context); // remove one
        return Navigator.push<T>(context, route);

      case NavigateType.clearAll:
        return Navigator.pushAndRemoveUntil<T>(
          context,
          route,
              (route) => false, // clear all previous
        );
    }
  }
}
