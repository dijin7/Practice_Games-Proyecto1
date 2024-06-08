import 'package:flutter/material.dart';

class Steps extends StatefulWidget {
  @override
  _stepState createState() => _stepState();
}

class _stepState  extends  State<Steps>{

  int _Index = 1;
  List<Widget> body = const [
    Icon(Icons.newspaper),
    Icon(Icons.search),
    Icon(Icons.library_books),
    Icon(Icons.person)
  ];

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
          (title: const Text
            (
              'PASO 1 - Herramienta de practica y "LAST HIT"',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            
          ),
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
                    Title(color: Colors.black, child:Text('Herramienta de Practica'),),
                    Title(color: Colors.black, child:Text('Parte 1'),),
                    const SizedBox(height: 20, width: 1000,),
                    const Text('Para entrar a la herramienta de practica debes entrar en "jugar" -> "entrenamiento" -> "herramienta de practica". Puedes añadir un bot a la partida pero lo recomendable es la primera vez no hacerlo. Cuando entras, te daran a escoger un personaje, en un inicio empieza con el personaje que mas te acomode o guste, y luego puedes ir variando.'),
                    SizedBox(height: 5),
                  ],
                ),
              ),
            ),

            Center(
              child:Card
              (
                elevation: 5,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Title(color: Colors.black, child:Text('Last Hit'),),
                    Title(color: Colors.black, child:Text('Parte 2'),),
                    const SizedBox(height: 20, width: 1000,),
                    const Text('Al entrar a la partida de practica esta se desarrollara como una partida normal. Para practicar el last hit anda a una linea y intenta ir dandole el golpe final a los miniones, esto comprando los objetos respetivos que utilizarias con tu campeon en base al minuto. Considera que cada 10 minutos 100 de farmeo es un farmeo perfecto, pero con ir mejorando tu last hit esto ira aumentando gradualmente.'),
                    SizedBox(height: 5),
                  ],
                ),
              ),
            ),
            ),

              Center(    
              child: Card(
                elevation: 5,
                color: Color.fromARGB(255, 14, 231, 255),
                child: 
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      TextButton( 
                        child: Text('Volver'),
                        onPressed:() {
                          Navigator.pushReplacementNamed(context,'pages/lib/rutine');
                        },
                      ),                    
                    ],
                  ),
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
