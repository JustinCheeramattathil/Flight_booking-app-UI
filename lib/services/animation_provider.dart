import 'package:flutter/material.dart';

class AnimationProvider with ChangeNotifier {
 bool _isVisible = true;

  bool get isVisible => _isVisible;

  void toggleVisibility() {
    _isVisible = !_isVisible;
    notifyListeners();
  }
}