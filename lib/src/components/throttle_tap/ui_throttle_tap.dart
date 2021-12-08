import 'dart:async';
import 'package:flutter/material.dart';
import 'package:meteor_ui/meteor_ui.dart';

class UIThrottleTap extends StatefulWidget {
  final Widget child;
  final Function()? onTap;
  final Duration delay;
  final EdgeInsets extraHitTestArea;
  final Color? debugHitTestAreaColor;

  const UIThrottleTap({
    Key? key,
    required this.child,
    this.onTap,
    this.delay = const Duration(milliseconds: 50),
    this.extraHitTestArea = EdgeInsets.zero,
    this.debugHitTestAreaColor,
  }) : super(key: key);

  @override
  _UIThrottleTapState createState() => _UIThrottleTapState();
}

class _UIThrottleTapState extends State<UIThrottleTap> {
  final _ThrottleHandler _throttleHandler = _ThrottleHandler();

  @override
  void dispose() {
    super.dispose();
    _throttleHandler.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
      stream: _throttleHandler.stream,
      builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
        Function()? fun;
        if (snapshot.hasError || (snapshot.data ?? false) == false) {
          fun = () async => _throttleHandler.handleTap(func: widget.onTap, delay: widget.delay);
        }
        return UIGestureDetector(
          extraHitTestArea: widget.extraHitTestArea,
          onTap: fun,
          child: widget.child,
          debugHitTestAreaColor: widget.debugHitTestAreaColor,
        );
      },
    );
  }
}

class _ThrottleHandler {
  late final StreamController<bool> _ctrl;

  Stream<bool> get stream => _ctrl.stream;

  _ThrottleHandler() {
    _ctrl = StreamController<bool>();
    _ctrl.add(false);
  }

  Future<void> handleTap({
    Function()? func,
    Duration delay = const Duration(milliseconds: 50),
  }) async {
    if (func == null) return;
    try {
      if (_ctrl.isClosed == false) {
        _ctrl.add(true);
      }
      await func();
      await Future.delayed(delay);
    } on Exception catch (_) {
      rethrow;
    } finally {
      if (_ctrl.isClosed == false) {
        _ctrl.add(false);
      }
    }
  }

  void dispose() {
    _ctrl.close();
  }
}
