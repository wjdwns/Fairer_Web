import 'package:fairerweb/config/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InitPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Palette.fairerBlue,
          child: Column(
            children: [Align()],
          ),
        ),
      ),
    );
  }
}