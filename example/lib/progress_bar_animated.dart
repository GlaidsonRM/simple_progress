import 'package:flutter/material.dart';
import 'package:simple_progress/simple_progress.dart';

class ProgressBarAnimated extends StatelessWidget {
  const ProgressBarAnimated({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Progress Animated'),
      ),
      body: Center(
        child: SimpleProgressBarAnimated(max: 100, progress: 80, heightProgress: 30,),
      ),
    );
  }
}
