import 'package:flutter/material.dart';

class SimpleProgressBar extends StatelessWidget {
  final double max;
  final double progress;
  final double? heightProgress;
  final Color? mainColor;
  final Color? backgroundColor;

  const SimpleProgressBar({
    Key? key,
    required this.max,
    required this.progress,
    this.heightProgress = 6.0,
    this.mainColor = Colors.blue,
    this.backgroundColor = Colors.grey
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double shapeProgress = 20;

    return SizedBox(
      width: 200,
      child: Row(
        children: [
          Expanded(
            flex: progress.toInt(),
            child: Container(
              decoration: BoxDecoration(
                  color: mainColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(shapeProgress),
                    bottomLeft: Radius.circular(shapeProgress),
                    topRight:
                    Radius.circular(progress >= max ? shapeProgress : 0),
                    bottomRight:
                    Radius.circular(progress >= max ? shapeProgress : 0),
                  )),
              height: heightProgress,
            ),
          ),
          Expanded(
            flex: (max - progress).toInt(),
            child: Container(
              decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(progress == 0 ? shapeProgress : 0),
                    bottomLeft:
                    Radius.circular(progress == 0 ? shapeProgress : 0),
                    topRight: Radius.circular(shapeProgress),
                    bottomRight: Radius.circular(shapeProgress),
                  )),
              height: heightProgress,
            ),
          ),
        ],
      ),
    );
  }
}
