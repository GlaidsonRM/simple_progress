# Simple Progress

Progress bar for simple and progress bar with animations

## Introduction

These bars help you create a progress bar for process steps in your application, 
such as remaining time to download.

## Usage

The easiest way to make a progress bar is to use `SimpleProgressBar`:

![image](https://github.com/GlaidsonRM/simple_progress/blob/main/examples/ProgressBarExample.png)

```dart
import 'package:flutter/material.dart';
import 'package:simple_progress/simple_progress.dart';

class ProgressBar extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SimpleProgressBar(
            max: 10,
            progress: 5,
            heightProgress: 30,
            mainColor: mainColor,
            backgroundColor: backgroundColor,
          ),
        ),
      ],
    );
  }
}
```

And you also have the way to create an animated progress bar using `SimpleProgressBarAnimated`:

<img alt="animated image" height="700" src="https://github.com/GlaidsonRM/simple_progress/blob/main/examples/ProgressBarAnimated.gif" width="300"/>

```dart
import 'package:flutter/material.dart';
import 'package:simple_progress/simple_progress.dart';
class ProgressBar extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SimpleProgressBarAnimated(
            max: 100, 
            progress: 80, 
            heightProgress: 30,
          ),
        ),
      ],
    );
  }
}
```
