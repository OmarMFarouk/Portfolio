import 'package:flutter/material.dart';

import '../../../res/constants.dart';

class NavigationTextButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final bool isActive;
  const NavigationTextButton(
      {super.key,
      required this.onTap,
      required this.text,
      required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: !isActive
          ? null
          : BoxDecoration(
              borderRadius: BorderRadius.circular(defaultPadding),
              gradient: LinearGradient(colors: [
                Colors.pink,
                Colors.blue.shade900,
              ]),
              boxShadow: const [
                  BoxShadow(
                      color: Colors.blue,
                      offset: Offset(0, -1),
                      blurRadius: defaultPadding / 4),
                  BoxShadow(
                      color: Colors.red,
                      offset: Offset(0, 1),
                      blurRadius: defaultPadding / 4),
                ]),
      child: TextButton(
          onPressed: onTap,
          child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
          )),
    );
  }
}
