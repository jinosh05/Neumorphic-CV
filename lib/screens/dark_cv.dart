import 'package:flutter/material.dart';
import 'package:neumorphic_cv/configs/space.dart';
import 'package:neumorphic_cv/constants/colors.dart';

class DarkCV extends StatefulWidget {
  const DarkCV({super.key});

  @override
  State<DarkCV> createState() => _DarkCVState();
}

class _DarkCVState extends State<DarkCV> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.black2, AppColors.black3],
            begin: Alignment.topLeft,
            end: Alignment.topRight,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: Space.all(),
                child: Row(
                  children: const [],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
