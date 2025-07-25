import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this)
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(
    String routeName, {
    required RoutePredicate predicate,
    Object? arguments,
  }) {
    return Navigator.of(this)
        .pushNamedAndRemoveUntil(routeName, predicate, arguments: arguments);
  }

  void pop() {
    return Navigator.of(this).pop();
  }

  Future<dynamic> push(Widget widget) {
    return Navigator.of(this).push(
      MaterialPageRoute<dynamic>(
        builder: (BuildContext context) => widget,
      ),
    );
  }

  bool canPop() => Navigator.of(this).canPop();
}

extension StringExtension on String? {
  bool isNullOrEmpty() => this == null || this == '';
}
