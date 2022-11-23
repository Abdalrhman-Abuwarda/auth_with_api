import 'package:flutter/material.dart';
class RouterClass {
  RouterClass._();
  static RouterClass routerClass = RouterClass._();
  GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();


  pushWidget(Widget widget) {
    navKey.currentState?.push(MaterialPageRoute(builder: (context) {
      return widget;
    }));
  }
  pushWidgetReplacement(Widget widget) {
    navKey.currentState?.pushReplacement(MaterialPageRoute(builder: (context) {
      return widget;
    }));
  }

  pushWidgetRemovePrev(Widget widget){
    navKey.currentState?.pushAndRemoveUntil(MaterialPageRoute(builder: (context) {
      return widget;
    }), (route) => false);
  }
  popFunction() {
    navKey.currentState?.pop();
  }
}