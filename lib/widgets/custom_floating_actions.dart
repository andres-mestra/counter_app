import 'package:flutter/material.dart';

class CustomFloatingActions extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;

  const CustomFloatingActions({
    super.key,
    required this.increaseFn,
    required this.decreaseFn,
    required this.resetFn,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.plus_one_outlined),
          onPressed: () => increaseFn(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.restore_outlined),
          onPressed: () => resetFn(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1_outlined),
          onPressed: () => decreaseFn(),
        ),
      ],
    );
  }
}
