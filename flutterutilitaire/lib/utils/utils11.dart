import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Audio extends StatefulWidget {
  @override
  _AudioState createState() => _AudioState();
}

AnimationController _animationIconController1;
AudioCache audioCache;
AudioPlayer audioPlayer;

Duration _duration = Duration();
Duration _position = Duration();

bool issongplaying = false;

bool isplaying = false;

void seekToSeconds(int second) {
  Duration newDuration = Duration(seconds: second);
  audioPlayer.seek(newDuration);
}

class _AudioState extends State<Audio> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();

    initPlayer();
  }

  void initPlayer() {
    _animationIconController1 = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 750),
      reverseDuration: Duration(milliseconds: 750),
    );
    audioPlayer = AudioPlayer();
    audioCache = AudioCache(fixedPlayer: audioPlayer);
    // ignore: deprecated_member_use
    audioPlayer.durationHandler = (d) => setState(() {
          _duration = d;
        });
    // ignore: deprecated_member_use
    audioPlayer.positionHandler = (p) => setState(() {
          _position = p;
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AudioPlayer"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset('assets/blinding.jpeg', fit: BoxFit.contain),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Blinding Light",
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Slider(
              activeColor: Colors.blue,
              inactiveColor: Colors.grey,
              value: _position.inSeconds.toDouble(),
              max: _duration.inSeconds.toDouble(),
              onChanged: (double value) {
                setState(() {
                  seekToSeconds(value.toInt());
                  value = value;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              //padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("${_position.inMinutes}" + " sec"),
                  Text("${_duration.inSeconds}" + " sec"),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isplaying
                      ? _animationIconController1.reverse()
                      : _animationIconController1.forward();
                  isplaying = !isplaying;
                });
                if (issongplaying == false) {
                  audioCache.play("TheWeeknd.mp3");
                  setState(() {
                    issongplaying = true;
                  });
                } else {
                  audioPlayer.pause();
                  setState(() {
                    issongplaying = false;
                  });
                }
              },
              child: ClipOval(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2.5,
                      color: Colors.blue,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(50.0),
                    ),
                  ),
                  width: 75,
                  height: 75,
                  child: Center(
                    child: AnimatedIcon(
                      icon: AnimatedIcons.play_pause,
                      progress: _animationIconController1,
                      color: Colors.grey,
                      size: 60,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
