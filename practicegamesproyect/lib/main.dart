import 'package:flutter/material.dart';

import 'pages/news.dart';
import 'pages/search.dart';
import 'pages/game.dart';
import 'pages/profile.dart';



import 'pages/lib/lib.dart';
import 'pages/lib/rutine.dart';
import 'pages/lib/steps.dart';


void main() { 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practice Games Proyect',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Practice Games Proyect'),


      routes: {
        'pages/news':(context) => News(),

        'pages/lib/lib':(context) => Lib(),
        'pages/lib/rutine':(context) => Rutine(),
        'pages/lib/steps':(context) => Steps(),

        'pages/search':(context) => Searchs(),
        'pages/game':(context) => Games(),

        'pages/profile':(context) => Profiles(),
      },




    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Center(
        child: Card(
        elevation: 25,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            //const ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/pages/detail');},);
            Text("Username"),

              TextField(decoration: InputDecoration(labelText: 'Usuario') ,),

            Text("Password",),
    
              TextField(obscureText:true, decoration: InputDecoration(labelText: 'Contraseña')),
             
             
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              

               
              Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
              ),
              alignment: Alignment.bottomLeft,
              child: ElevatedButton(
                onPressed: () {
                    Navigator.pushReplacementNamed(context,'pages/news');
                  }, 
                  child: Text("Entrar")
                ),
              ),
             ],
            ),
          ],
          ),
        ),
        ),
      ),

    );
  }
}
