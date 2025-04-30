import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Loadix {
  static OverlayEntry? _overlayEntry;

  static void show(BuildContext context) {
    if (_overlayEntry != null) return; // Prevent showing multiple overlays

    _overlayEntry = _createOverlayEntry(context);
    Overlay.of(context).insert(_overlayEntry!);
  }

  static void hide() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  static final loadingWidget = Center(
    child: LoadingAnimationWidget.staggeredDotsWave(
      color: Colors.green,
      size: 40,
    ),
  );

  static OverlayEntry _createOverlayEntry(BuildContext context) {
    return OverlayEntry(
      builder: (context) => Positioned(
        top: 0,
        bottom: 0,
        left: 0,
        right: 0,
        child: Material(
          color: Colors.black.withOpacity(0.15),
          child: Center(
            child: LoadingAnimationWidget.staggeredDotsWave(
              color: Colors.green,
              size: 40,
            ),
          ),
        ),
      ),
    );
  }
}
