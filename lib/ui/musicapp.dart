import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class myapp1 extends StatelessWidget {

var play = false;
var stop = true;

AudioPlayer assetPlayer = AudioPlayer();
final AudioCache player = AudioCache();


playvialocal() async {
  assetPlayer = await player.play('The Chainsmokers & Coldplay - Something Just Like This.mp3');
}

pausevialocal() async {
  assetPlayer.pause();
}

resumevialocal() async {
  assetPlayer.resume();
}

var audioPlayer = AudioPlayer();
int result;

playvianet() async {
  result = await audioPlayer.play('https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3');
  if (result == 1) {
    // success
  }
}

pausevianet() async {
  result = await audioPlayer.pause();
}

resumevianet() async {
  result = await audioPlayer.resume();
}

playvialocalA() async {
  assetPlayer = await player.play('Trevor Daniel - Falling.mp3');
}

pausevialocalA() async {
  assetPlayer.pause();
}

resumevialocalA() async {
  assetPlayer.resume();
}

var audioPlayer1 = AudioPlayer();
int result1;

playvianetA() async {
  result = await audioPlayer.play('https://www.soundhelix.com/examples/mp3/SoundHelix-Song-8.mp3');
  if (result1 == 1) {
    // success
  }
}

pausevianetA() async {
  result1 = await audioPlayer.pause();
}

resumevianetA() async {
  result1 = await audioPlayer.resume();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    title: Text(
      "MUSICAL GOODIES",
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.red,
        fontWeight: FontWeight.bold,
      ),
    ),
    backgroundColor: Colors.orange.shade300,
    actions: <Widget>[
      IconButton(icon: Icon(Icons.arrow_forward,), onPressed: () {
              Navigator.pushNamed(context, "/video");
            },)
    ],
  ),
    body: 
    Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: Colors.yellow,
          width: 2,
        ),
        color: Colors.amber.shade200,
      ),
      child: ListView(
        children: <Widget> [
          Padding(padding: EdgeInsets.all(5.0)),
          Container(
            width: double.infinity,
            height: 100,
            padding: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              image: DecorationImage(
          image: NetworkImage('https://images.squarespace-cdn.com/content/v1/5a93e128f93fd48afb74d295/1526309930129-L9XE5WTQVOFE3MC75OVP/ke17ZwdGBToddI8pDm48kIzpjLWxpnbm6TntkiSYgfhZw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZamWLI2zvYWH8K3-s_4yszcp2ryTI0HqTOaaUohrI8PImG4dqdct10iBvIhtO3_ymn0xHIAPLgPwZVmtVztMqkUKMshLAGzx4R3EDFOm1kBS/SJLT_thumb-2.jpg?format=500w'),

          fit: BoxFit.cover
            ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Card(
                  child: Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(
                  'Something Just Like This',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                    color: Colors.purple,
                  ),
                ),
              )),
              IconButton(
                  icon: Icon(
                    Icons.play_arrow,
                    color: Colors.red,
                    size: 35,
                  ),
                  onPressed: playvialocal),
              IconButton(
                  icon: Icon(
                    Icons.pause,
                    color: Colors.red,
                    size: 35,
                  ),
                  onPressed: pausevialocal),
              IconButton(
                  icon: Icon(
                    Icons.stop,
                    color: Colors.red,
                    size: 35,
                  ),
                  onPressed: resumevialocal),
            ],
          ),
          Padding(padding: EdgeInsets.all(5.0)),
          Container(
            width: double.infinity,
            height: 100,
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              image: DecorationImage(
          image: NetworkImage('https://www.mymp3app.com/wp-content/uploads/2019/12/Trevor-Daniel-Falling-Lyrics.jpg'),
          fit: BoxFit.cover
            ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Card(
                  child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Falling',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                    color: Colors.purple,
                  ),
                ),
              )),
           IconButton(
                  icon: Icon(
                    Icons.play_arrow,
                    color: Colors.red,
                    size: 35,
                  ),
                  onPressed: playvialocalA),
              IconButton(
                  icon: Icon(
                    Icons.pause,
                    color: Colors.red,
                    size: 35,
                  ),
                  onPressed: pausevialocalA),
              IconButton(
                  icon: Icon(
                    Icons.stop,
                    color: Colors.red,
                    size: 35,
                  ),
                  onPressed: resumevialocalA),
            ],
          ),
          Padding(padding: EdgeInsets.all(5.0)),
          Container(
            width: double.infinity,
            height: 100,
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              image: DecorationImage(
          image: NetworkImage('https://i.pinimg.com/originals/33/2e/2a/332e2a386ec49fa90dca0786b466036c.jpg'),
          fit: BoxFit.cover
            ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Card(
                  child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'SoundHelix Song 1',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                    color: Colors.purple,
                  ),
                ),
              )),
              IconButton(
                  icon: Icon(
                    Icons.play_arrow,
                    color: Colors.red,
                    size: 35,
                  ),
                  onPressed: playvianet),
              IconButton(
                  icon: Icon(
                    Icons.pause,
                    color: Colors.red,
                    size: 35,
                  ),
                  onPressed: pausevianet),
              IconButton(
                  icon: Icon(
                    Icons.stop,
                    color: Colors.red,
                    size: 35,
                  ),
                  onPressed: resumevianet),
            ],
          ),
          Padding(padding: EdgeInsets.all(5.0)),
          Container(
            width: double.infinity,
            height: 100,
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              image: DecorationImage(
          image: NetworkImage('https://images.unsplash.com/photo-1549046675-dd779977de88?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80'),
          fit: BoxFit.cover
            ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Card(
                  child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'SoundHelix Song 2',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                    color: Colors.purple,
                  ),
                ),
              )),
           IconButton(
                  icon: Icon(
                    Icons.play_arrow,
                    color: Colors.red,
                    size: 35,
                  ),
                  onPressed: playvianetA),
              IconButton(
                  icon: Icon(
                    Icons.pause,
                    color: Colors.red,
                    size: 35,
                  ),
                  onPressed: pausevianetA),
              IconButton(
                  icon: Icon(
                    Icons.stop,
                    color: Colors.red,
                    size: 35,
                  ),
                  onPressed: resumevianetA),
            ],
          ),
        ]
      ),
  ),


    );
  }
}
