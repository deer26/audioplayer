import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

final List<Color> colors = [
  Colors.red,
  Colors.yellow,
  Colors.teal,
  Colors.green,
  Colors.blue,
  Colors.orange,
  Colors.grey
];

class PianoView extends StatefulWidget {
  @override
  _PianoViewState createState() => _PianoViewState();
}

class _PianoViewState extends State<PianoView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: List.generate(6, (val)=>_flatButton(val)),
          // children: <Widget>[
          //   _flatButton(0),
          //   _flatButton(1),
          //   _flatButton(2),
          //   _flatButton(3),
          //   _flatButton(4),
          //   _flatButton(5),
          //   _flatButton(6),
          // ],
        ),
      ),
    );
  }
}

Widget _flatButton(int index) => Expanded(
      child: FlatButton(
          color: colors[index],
          padding: EdgeInsets.all(0.0),
          onPressed: () => _calKeke(index),
          child: Text("")),
    );

_calKeke(int index) async {
  index++;

  final player = AudioCache();
  player.play("note$index.wav");// bu muzikler sadece assets klasörü altında olmalıdır

}
