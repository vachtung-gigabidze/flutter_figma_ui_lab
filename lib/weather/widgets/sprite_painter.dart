import 'dart:async';

import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class SpritePainter extends CustomPainter {
  final ui.Image image;
  final int frameIndex;
  final int frameWidth;
  final int frameHeight;
  final int columns;
  final int rows;
  final Size resize;

  SpritePainter({
    required this.resize,
    required this.image,
    required this.frameIndex,
    required this.frameWidth,
    required this.frameHeight,
    required this.columns,
    this.rows = 1,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final srcX = (frameIndex % columns) * frameWidth;
    final srcY = (frameIndex ~/ columns) * frameHeight;

    final srcRect = Rect.fromLTWH(
      srcX.toDouble(),
      srcY.toDouble(),
      frameWidth.toDouble(),
      frameHeight.toDouble(),
    );

    final dstRect = Rect.fromLTWH(0, 0, resize.width, resize.width);

    canvas.drawImageRect(image, srcRect, dstRect, Paint());
  }

  @override
  bool shouldRepaint(covariant SpritePainter oldDelegate) {
    return oldDelegate.frameIndex != frameIndex || oldDelegate.image != image;
  }
}
