# Simple Progress

Progress bar for simple and progress bar with animations

# Expandable

A Flutter widget that can be expanded or collapsed by the user.

## Introduction

This library helps implement expandable behavior as prescribed by Material Design:


## Usage

The easiest way to make a progress bar is to use `SimpleProgressBar`:

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
