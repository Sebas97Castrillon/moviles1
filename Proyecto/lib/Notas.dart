import 'package:flutter/material.dart';
import 'package:proyecto/registro1.dart';

class RegistroAcd extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RegistroAcdState();
}

class _RegistroAcdState extends State<RegistroAcd>
    with TickerProviderStateMixin {
  late TabController _tabController;

  List<Widget> listaIconos = const <Widget>[
    Tab(
      icon: Icon(Icons.add_box),
      text: "Tareas",
    ),
    Tab(
      icon: Icon(Icons.access_time),
      text: "Recordatorios",
    ),
    Tab(
      icon: Icon(Icons.add_card),
      text: "Etiquetas",
    ),
    Tab(
      icon: Icon(Icons.ad_units),
      text: "Archivados",
    ),
    Tab(
      icon: Icon(Icons.auto_delete),
      text: "Papelera",
    ),
  ];

  List<Widget> contenidos = const <Widget>[
    Center(
      child: RegitroX(),
    ),
    Center(
      child: Text(""),
    ),
    Center(
      child: Text(""),
    ),
    Center(
      child: RegitroX(),
    ),
    Center(
      child: Text(""),
    ),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: listaIconos.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task Wall'),
        bottom: TabBar(
          controller: _tabController,
          tabs: listaIconos,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: contenidos,
      ),
    );
  }
}
