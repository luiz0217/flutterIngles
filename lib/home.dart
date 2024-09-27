import 'package:flutter/material.dart';
import 'package:ingles/bicho.dart';
import 'package:ingles/numeros.dart';
import 'package:ingles/videos.dart';
import 'package:ingles/vogais.dart';

class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();

}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{
  TabController? _tabController;
  @override
  void initState(){
    super.initState();
    _tabController = TabController(
      length: 4,
      vsync: this,
    );
  }

  @override
  void dispose(){
    super.dispose();
    _tabController!.dispose();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Aprenda Ingles"),
        bottom: TabBar(
          indicatorWeight: 4,
          indicatorColor: Color(0xFFFFFFFF),
          labelStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
          controller: _tabController,
          tabs: <Widget>[
            Tab(text: "bichos"),
            Tab(text: "numeros"),
            Tab(text: "vogais"),
            Tab(text: "videos"),
          ],
          ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Bichos(),
          Numeros(),
          Vogais(),
          Videos(),
        ],
      ),
    );
  }
}