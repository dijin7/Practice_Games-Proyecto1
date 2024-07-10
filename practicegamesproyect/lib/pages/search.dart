import 'package:flutter/material.dart';

class Searchs extends StatefulWidget {
  @override
  _SearchsState createState() => _SearchsState();
}





class _SearchsState  extends  State<Searchs>{

  int _Index = 2;
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
              'Busqueda',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ), 

          drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.all(12.3),
            children: [
              DrawerHeader
              (
                child: Text('menu')
              ),

            
              ListTile(
                title: Text('Perfil'),
                onTap: () {
                Navigator.pushReplacementNamed(context, 'pages/profile');
                },
              ),
              ListTile(
                title: Text('Busqueda'),
                onTap: (){
                Navigator.pushReplacementNamed(context, 'pages/search');
                },
              ),
              ListTile(
                title: Text('Libreria'),
                onTap: () {
                Navigator.pushReplacementNamed(context, 'pages/lib/lib');
                },
              ),
              ListTile(
                title: Text('News'),
                onTap:() {
                Navigator.pushReplacementNamed(context, 'pages/news');
                },
              ),




            ],
          ),
        ),

        backgroundColor: Colors.black,
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10.0),
              color: Colors.grey,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Busca el juego',
                  icon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onChanged: (String query){
                },
              ),

            ),

            


            Center(    
            child: Card(
              elevation: 5,
              color: Colors.white70,
              child: 
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Title(color: Colors.black, 
                    child:const Text
                      (
                      'League of Legends', 
                      textAlign: TextAlign.center,
                      style: 
                        TextStyle
                          (fontSize: 20, 
                          fontWeight: FontWeight.bold
                          ),
                        ),
                    ),
                    const SizedBox(height: 20, width: 1000,), 
                    TextButton( 
                      child: Text('Ver rutinas'),
                      onPressed:() {
                        Navigator.pushReplacementNamed(context,'pages/game', arguments: 1);
                      },
                    ),
                    Container(
                        decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(2.0),
                      ),
                    ),
                    
                  ],
                ),
              ),
            ),
          ),  
          SizedBox(height:3 ),
          Center(
            child: Card(
              elevation: 5,
              color: Colors.yellow,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Title(color: Colors.black, 
                    child:const Text
                      (
                      'Overwatch', 
                      textAlign: TextAlign.center,
                      style: 
                        TextStyle
                          (fontSize: 20, 
                          fontWeight: FontWeight.bold
                          ),
                        ),
                    ),
                    const SizedBox(height: 1, width: 1000,),
                    TextButton( 
                      child: Text('Ver rutinas'),
                      onPressed:() {
                        Navigator.pushReplacementNamed(context,'pages/game', arguments: 2);
                      },
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(2.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height:3 ),
          Center(
            child: Card(
              elevation: 5,
              color: Colors.yellow,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Title(color: Colors.black, 
                    child:const Text
                      (
                      'Smash', 
                      textAlign: TextAlign.center,
                      style: 
                        TextStyle
                          (fontSize: 20, 
                          fontWeight: FontWeight.bold
                          ),
                        ),
                    ),
                    const SizedBox(height: 1, width: 1000,),
                    TextButton( 
                      child: Text('Ver rutinas'),
                      onPressed:() {
                        Navigator.pushReplacementNamed(context,'pages/game', arguments: 3);
                      },
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(2.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )



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