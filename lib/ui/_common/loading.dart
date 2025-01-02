import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:multitask_fe/constants/assets.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      color: Theme.of(context).colorScheme.onSurface.withValues(
            alpha: 0.5,
          ),
      child: Center(
          child: Lottie.asset(
        Assets.loading,
        width: 100,
        height: 100,
      )),
    );
  }
}
