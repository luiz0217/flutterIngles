import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Bicho extends StatefulWidget {
  @override
  _BichoState createState() => _BichoState();

}

class _BichoState extends State<Bicho>{
  final player = AudioPlayer();

  void _executar(String nomeAudio){
    player.play(AssetSource("audios/${nomeAudio}.mp3"));
  }

  @override
  Widget build(BuildContext context){
    double largura = MediaQuery.of(context).size.width;
    double altura = MediaQuery.of(context).size.height;

    return GridView.count(
      crossAxisCount: 2,
      children: <Widget>[
        GestureDetector(
          onTap: (){_executar("cao")},
          child: Image.asset("assets/Imagens/cao.png"),
        ),
        GestureDetector(
          onTap: (){_executar("gato")},
          child: Image.asset("assets/Imagens/gato.png"),
        ),
        GestureDetector(
          onTap: (){_executar("leao")},
          child: Image.asset("assets/Imagens/leao.png"),
        ),
        GestureDetector(
          onTap: (){_executar("macaco")},
          child: Image.asset("assets/Imagens/macaco.png"),
        ),
        GestureDetector(
          onTap: (){_executar("vaca")},
          child: Image.asset("assets/Imagens/vaca.png"),
        ),
      ],
    )
  }
}