import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class SimpleProgressBarAnimated extends StatefulWidget {
  final double max;
  final double progress;
  final double? heightProgress;
  Color? colorProgress;
  final Color? colorMissingProgress;

  SimpleProgressBarAnimated({
    Key? key,
    required this.max,
    required this.progress,
    this.heightProgress = 6.0,
    this.colorProgress = Colors.blue,
    this.colorMissingProgress = Colors.grey
  }) : super(key: key);

  @override
  State<SimpleProgressBarAnimated> createState() => _SimpleProgressBarAnimatedState();
}

class _SimpleProgressBarAnimatedState extends State<SimpleProgressBarAnimated> {
  var rng = Random();
  Timer? timer;

  @override
  void initState() {
    _startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double shapeProgress = 20;

    return SizedBox(
      width: 200,
      child: Row(
        children: [
          Expanded(
            flex: widget.progress.toInt(),
            child: AnimatedContainer(
              decoration: BoxDecoration(
                //gradient: LinearGradient(colors: [widget.colorProgress!, Colors.red]),
                  color: widget.colorProgress,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(shapeProgress),
                    bottomLeft: Radius.circular(shapeProgress),
                    topRight:
                    Radius.circular(widget.progress >= widget.max ? shapeProgress : 0),
                    bottomRight:
                    Radius.circular(widget.progress >= widget.max ? shapeProgress : 0),
                  )),
              height: widget.heightProgress, duration: const Duration(seconds: 1),
            ),
          ),
          Expanded(
            flex: (widget.max - widget.progress).toInt(),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(widget.progress == 0 ? shapeProgress : 0),
                    bottomLeft:
                    Radius.circular(widget.progress == 0 ? shapeProgress : 0),
                    topRight: Radius.circular(shapeProgress),
                    bottomRight: Radius.circular(shapeProgress),
                  )),
              height: widget.heightProgress,
            ),
          ),
        ],
      ),
    );
  }

  void _startTimer(){
    timer = Timer.periodic(const Duration(milliseconds: 500), (timer) {
      setState(() {
        final color = colors[
        rng.nextInt(colors.length)];
        widget.colorProgress = color;
      });
    });
  }

  List<Color> colors = [
    Colors.green,
    Colors.blue,
    Colors.red,
    Colors.teal,
    Colors.orange,
    Colors.amber
  ];

  @override
  void dispose() {
    timer!.cancel();
    super.dispose();
  }
}
