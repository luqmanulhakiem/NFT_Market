import 'dart:ui';

import 'package:flutter/material.dart';

class PageWidget extends StatelessWidget {
  final Widget child;
  const PageWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F9FC),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            right: -50,
            top: -49,
            child: _blurredCircle(color: 0xFF1B4DEA),
          ),
          Positioned(
            left: -66,
            bottom: -72,
            child: _blurredCircle(color: 0xFFF86780),
          ),
          SafeArea(child: child)
        ],
      ),
    );
  }

  Container _blurredCircle({required int color}) {
    return Container(
      height: 161,
      width: 161,
      decoration: BoxDecoration(
        color: Color(color).withOpacity(.3),
        borderRadius: BorderRadius.circular(161 / 2),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 80, sigmaY: 80),
        child: Container(),
      ),
    );
  }
}
