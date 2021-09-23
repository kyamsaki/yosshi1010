import 'package:flutter/cupertino.dart';

extension StatelessExtension on StatelessWidget {
  void onTransition(String path, BuildContext context, {Object? arguments}) {
    Navigator.of(context).pushNamed(path, arguments: arguments);
  }
}

extension StateExtension on State {
  void onTransition(String path, BuildContext context, {Object? arguments}) {
    Navigator.of(context).pushNamed(path, arguments: arguments);
  }
}