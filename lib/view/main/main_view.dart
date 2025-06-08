import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../view%20model/controller.dart';
import '../../../view/main/components/navigation_bar.dart';
import '../../../view model/responsive.dart';
import '../../res/constants.dart';
import 'components/drawer/drawer.dart';
import 'components/navigation_button_list.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class MainView extends StatelessWidget {
  const MainView({super.key, required this.pages});
  final List<Widget> pages;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      body: Center(
        child: Column(
          children: [
            kIsWeb && !Responsive.isLargeMobile(context)
                ? const SizedBox(
                    height: defaultPadding * 2,
                  )
                : const SizedBox(
                    height: defaultPadding / 2,
                  ),
            const SizedBox(
              height: 80,
              child: TopNavigationBar(),
            ),
            if (Responsive.isLargeMobile(context))
              const Row(
                children: [Spacer(), NavigationButtonList(), Spacer()],
              ),
            Expanded(
              flex: 9,
              child: Listener(
                onPointerSignal: (event) {
                  if (event is PointerScrollEvent) {
                    double yScroll = event.scrollDelta.dy;

                    if (yScroll <= 0) {
                      controller.previousPage(
                          duration: const Duration(milliseconds: 250),
                          curve: Curves.fastEaseInToSlowEaseOut);
                    } else {
                      controller.nextPage(
                          duration: const Duration(milliseconds: 250),
                          curve: Curves.fastEaseInToSlowEaseOut);
                    }
                  }
                },
                child: PageView(
                  onPageChanged: (value) => pageIndexNotifier.value = value,
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  controller: controller,
                  children: [...pages],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
