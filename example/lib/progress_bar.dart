import 'package:flutter/material.dart';
import 'package:simple_progress/simple_progress.dart';

class ProgressBar extends StatefulWidget {
  const ProgressBar({Key? key}) : super(key: key);

  @override
  State<ProgressBar> createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar> {

  Color mainColor = Colors.blue;
  Color backgroundColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Progress'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Text(
              'Cor Principal',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                _containerColor(color: Colors.blue, mainColorValue: true),
                const SizedBox(
                  width: 8,
                ),
                _containerColor(color: Colors.green, mainColorValue: true),
                const SizedBox(
                  width: 8,
                ),
                _containerColor(color: Colors.red, mainColorValue: true),
                const SizedBox(
                  width: 8,
                ),
                _containerColor(color: Colors.orange, mainColorValue: true),
                const SizedBox(
                  width: 8,
                ),
                _containerColor(color: Colors.teal, mainColorValue: true),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'Cor de Fundo',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                _containerColor(color: Colors.grey, mainColorValue: false),
                const SizedBox(
                  width: 8,
                ),
                _containerColor(color: Colors.black, mainColorValue: false),
                const SizedBox(
                  width: 8,
                ),
                _containerColor(color: Colors.redAccent, mainColorValue: false),
                const SizedBox(
                  width: 8,
                ),
                _containerColor(color: Colors.orangeAccent, mainColorValue: false),
                const SizedBox(
                  width: 8,
                ),
                _containerColor(color: Colors.tealAccent, mainColorValue: false),
              ],
            ),
            const Divider(
              thickness: 2,
              color: Colors.black,
            ),
            const Spacer(),
            Row(
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
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  Widget _containerColor({required Color color, required bool mainColorValue}) {
    return Expanded(
      child: InkWell(
        onTap: (){
          setState(() {
            if(mainColorValue){
              mainColor = color;
            } else {
              backgroundColor = color;
            }
          });
        },
        child: Container(
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(12.0),),
          height: 60,
          width: 60,
        ),
      ),
    );
  }
}
