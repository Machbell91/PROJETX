import 'package:flutter/material.dart';
import 'package:dbop/TimerWidget.dart';

class TimerProvider extends InheritedWidget {
  final TimerWidget timerWidget;

  TimerProvider({required this.timerWidget, required Widget child})
      : super(child: child);

  static TimerProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<TimerProvider>();
  }

  @override
  bool updateShouldNotify(TimerProvider oldWidget) {
    return oldWidget.timerWidget != timerWidget;
  }
}
