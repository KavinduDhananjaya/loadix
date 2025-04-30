import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

enum LoaderTypes {
  staggeredDotsWave,
  inkDrop,
  threeRotatingDots,
  fourRotatingDots,
  fallingDot,
  progressiveDots,
  discreteCircle,
  threeArchedCircle,
  bouncingBall,
  waveDots,
  stretchedDots,
  halfTriangleDot,
  dotsTriangle,
  horizontalRotatingDots,
}

class Loadix {
  static OverlayEntry? _overlayEntry;
  static LoaderTypes _type = LoaderTypes.staggeredDotsWave;
  static double _loaderSize = 30.0;
  static Color _loaderColor = Colors.green;

  static getLoaderByType(
    LoaderTypes type,
    Color color,
    double size,
  ) {
    switch (type) {
      case LoaderTypes.staggeredDotsWave:
        return LoadingAnimationWidget.staggeredDotsWave(
          color: color,
          size: size,
        );
      case LoaderTypes.inkDrop:
        return LoadingAnimationWidget.inkDrop(
          color: color,
          size: size,
        );
      case LoaderTypes.threeRotatingDots:
        return LoadingAnimationWidget.threeRotatingDots(
          color: color,
          size: size,
        );
      case LoaderTypes.fourRotatingDots:
        return LoadingAnimationWidget.fourRotatingDots(
          color: color,
          size: size,
        );
      case LoaderTypes.fallingDot:
        return LoadingAnimationWidget.fallingDot(
          color: color,
          size: size,
        );
      case LoaderTypes.progressiveDots:
        return LoadingAnimationWidget.progressiveDots(
          color: color,
          size: size,
        );
      case LoaderTypes.discreteCircle:
        return LoadingAnimationWidget.discreteCircle(
          secondRingColor: color.withAlpha(250),
          thirdRingColor: color.withAlpha(120),
          color: color,
          size: size,
        );
      case LoaderTypes.threeArchedCircle:
        return LoadingAnimationWidget.threeArchedCircle(
          color: color,
          size: size,
        );
      case LoaderTypes.bouncingBall:
        return LoadingAnimationWidget.bouncingBall(
          color: color,
          size: size,
        );
      case LoaderTypes.waveDots:
        return LoadingAnimationWidget.waveDots(
          color: color,
          size: size,
        );
      case LoaderTypes.stretchedDots:
        return LoadingAnimationWidget.stretchedDots(
          color: color,
          size: size,
        );
      case LoaderTypes.halfTriangleDot:
        return LoadingAnimationWidget.halfTriangleDot(
          color: color,
          size: size,
        );
      case LoaderTypes.dotsTriangle:
        return LoadingAnimationWidget.dotsTriangle(
          color: color,
          size: size,
        );
      case LoaderTypes.horizontalRotatingDots:
        return LoadingAnimationWidget.horizontalRotatingDots(
          color: color,
          size: size,
        );
    }
  }

  static void show(
    BuildContext context, {
    Color? color,
    LoaderTypes? loaderType,
    double? loaderSize,
  }) {
    if (_overlayEntry != null) return; // Prevent showing multiple overlays

    _overlayEntry = _createOverlayEntry(
      context,
      color: color,
      loaderType: loaderType,
      size: loaderSize,
    );
    Overlay.of(context).insert(_overlayEntry!);
  }

  static void init({
    Color? color,
    LoaderTypes? loaderType,
    double? loaderSize,
  }) {
    _loaderColor = color ?? Colors.green;
    _type = loaderType ?? LoaderTypes.staggeredDotsWave;
    _loaderSize = loaderSize?? 30.0;
  }

  static void hide() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  static final loadingWidget = Center(
    child: getLoaderByType(
      LoaderTypes.staggeredDotsWave,
      Colors.green,
      40,
    ),
  );

  static OverlayEntry _createOverlayEntry(
    BuildContext context, {
    Color? color,
    LoaderTypes? loaderType,
    double? size,
  }) {
    return OverlayEntry(
      builder: (context) => Positioned(
        top: 0,
        bottom: 0,
        left: 0,
        right: 0,
        child: Material(
          color: Colors.black.withAlpha(38),
          child: Center(
            child: getLoaderByType(
              loaderType ?? _type,
              color ?? _loaderColor,
              size ?? _loaderSize,
            ),
          ),
        ),
      ),
    );
  }
}
