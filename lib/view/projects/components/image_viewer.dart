import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../model/project_model.dart';

class ImageViewer {
  ImageViewer(BuildContext context, int index) {
    ValueNotifier currentImage = ValueNotifier(0);
    showGeneralDialog(
      context: context,
      pageBuilder: (context, animation, secondaryAnimation) => Material(
        color: Colors.transparent,
        child: ValueListenableBuilder(
            valueListenable: currentImage,
            builder: (context, currentImageIndex, child) {
              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\t${projectList[index].name}',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.close,
                          color: Colors.white,
                        ),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ],
                  ),
                  Expanded(
                      flex: 4,
                      child: InteractiveViewer(
                        child: Image.asset(
                          projectList[index].images[currentImageIndex],
                          fit: BoxFit.contain,
                        ),
                      )),
                  const Divider(),
                  Expanded(
                    flex: 2,
                    child: ScrollConfiguration(
                      behavior: const ScrollBehavior().copyWith(
                        dragDevices: {
                          PointerDeviceKind.mouse,
                          PointerDeviceKind.touch,
                          PointerDeviceKind.trackpad
                        },
                      ),
                      child: ListView.separated(
                          separatorBuilder: (context, index) => const SizedBox(
                                width: 10,
                              ),
                          padding: const EdgeInsets.all(5),
                          scrollDirection: Axis.horizontal,
                          itemCount: projectList[index].images.length,
                          itemBuilder: (context, imageIndex) {
                            return Material(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10),
                              child: GestureDetector(
                                onTap: () => currentImage.value = imageIndex,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Opacity(
                                      opacity: currentImage.value == imageIndex
                                          ? 0.7
                                          : 1,
                                      child: Image.asset(
                                        projectList[index].images[imageIndex],
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    Visibility(
                                      visible: currentImage.value == imageIndex,
                                      child: const Icon(
                                        Icons.visibility,
                                        blendMode: BlendMode.clear,
                                        size: 30,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                  )
                ],
              );
            }),
      ),
    );
  }
}
