
import 'package:flutter/material.dart';

class Rutine extends StatefulWidget {
    @override
  _rutineState createState() => _rutineState();
}

class _rutineState  extends  State<Rutine>{

  bool? estaSeleccionado1 = false;
  bool? estaSeleccionado2 = false;
  bool? estaSeleccionado3 = false;
  bool? estaSeleccionado4 = false;
  bool? estaSeleccionado5 = false;


  int _Index = 1;
  List<Widget> body = const [
    Icon(Icons.newspaper),
    Icon(Icons.search),
    Icon(Icons.library_books),
    Icon(Icons.person)
  ];

  @override

  Widget build(BuildContext context) {

  final List<String> listaPasos = ModalRoute.of(context)!.settings.arguments as List<String>;


    return Scaffold(
      appBar: AppBar
          (),
          backgroundColor: Colors.black,
          body: 

         

         
          Column(    
            children:
            [ Card(
              elevation: 5,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const SizedBox(height: 20, width: 1000,),
                    Text(listaPasos[0]),
                    Text(listaPasos[1]),
                    Text(listaPasos[2]),
                    Text(listaPasos[3]),
                    Text(listaPasos[4]),
                    SizedBox(height: 5),
                  ],
                ),
              ),
            ),




            ],
          ),

          
          
        bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.blue,
        currentIndex: _Index,
        onTap: (int new_Index) {
          setState((){
            _Index  = new_Index;
          });
          switch (new_Index){
            case 0:
            Navigator.pushReplacementNamed(context, 'pages/news');
            break;
            case 1:
            Navigator.pushReplacementNamed(context, 'pages/lib/lib');
            break;
            case 2:
            Navigator.pushReplacementNamed(context, 'pages/search');
            break;
            case 3:
            Navigator.pushReplacementNamed(context, 'pages/profile');
            break;
          }
        },
        items: const [
          BottomNavigationBarItem(
            label: 'News',
            icon: Icon(Icons.newspaper),
            backgroundColor: Colors.black
          ),
          BottomNavigationBarItem(
            label: 'library',
            icon: Icon(Icons.library_books),
            backgroundColor: Colors.black
          ),
          BottomNavigationBarItem(
            label: 'Search',
            icon: Icon(Icons.search),
            backgroundColor: Colors.black
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.person),
            backgroundColor: Colors.black
          ),
        
        ],
      ),
    );

  }
}
