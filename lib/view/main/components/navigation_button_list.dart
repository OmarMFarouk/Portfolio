import 'package:flutter/material.dart';
import '../../../view%20model/controller.dart';

import 'navigation_button.dart';

class NavigationButtonList extends StatelessWidget {
  const NavigationButtonList({super.key});
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return Transform.scale(
          scale: value,
          child: ValueListenableBuilder<int>(
              valueListenable: pageIndexNotifier,
              builder: (context, value, child) {
                return Row(
                  children: [
                    NavigationTextButton(
                        isActive: value == 0,
                        onTap: () {
                          controller.animateToPage(0,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        text: 'About'),
                    NavigationTextButton(
                        isActive: value == 1,
                        onTap: () {
                          controller.animateToPage(1,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        text: 'Projects'),
                    NavigationTextButton(
                        isActive: value == 2,
                        onTap: () {
                          controller.animateToPage(2,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        text: 'Certifications'),
                  ],
                );
              }),
        );
      },
    );
  }
}
