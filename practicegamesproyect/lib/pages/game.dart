import 'package:flutter/material.dart';

class Games extends StatefulWidget {
  final int id;

  Games({required this.id});

  @override
  _gamesState createState() => _gamesState();
}


class EstadoRutina {
  int? IdRuti;
  int? Avance;

  EstadoRutina(int Id, [int Av = 0]){
    this.IdRuti = Id;
    this.Avance = Av;
  }
} 
class Rutinas {
  int IdRutina;
  String Nombre;
  String Descripcion;
  List<String> Pasos;
  String Resultados;
  String Dificultad;

  Rutinas(this.IdRutina, this.Nombre, this.Descripcion,this.Pasos ,this.Resultados, this.Dificultad);
}
class Juegos {
  int IdJuego;
  String Nombre;
  String Descripcion;
  List<Rutinas>? JuegosRutinas;
  String ModosDeJuego;
  String? ImaagenJuegoNombre;

  Juegos(this.IdJuego, this.Nombre, this.Descripcion, this.JuegosRutinas, this.ModosDeJuego, this.ImaagenJuegoNombre);
}





class _gamesState  extends  State<Games>{

  int _Index = 2;
  List<Widget> body = const [
    Icon(Icons.newspaper),
    Icon(Icons.search),
    Icon(Icons.library_books),
    Icon(Icons.person)
  ];

  @override



  Widget build(BuildContext context) {


//-----------------------------------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------------------------------

    
//Listas de Lol
List<String> ListaFarmear = ['Paso 1 - Primero, habre la herramienta de practica, para ello debes entrar le debes dar a Jugar => Entrenamiento => Herramienta de practica.',
  'Paso 2 - Empecemos practicando sin enemigos, la idea es que juegues una linea de manera normal como si fuera una partida en la cual vas a tu linea y farmeas, tu meta es farmear 100 mminions por cada 10 minutos, por lo que se recomienda estar practicando hasta acostumbrarte al last hit',
  'Paso 3 - Ya cuando tengas praticado parte del juego, prueba contra bots',
  'Paso 4 - Luego de probar contra bots, prueba contra personas.',
  'Termino -  Bien hecho, terminaste el tutorial de farmeo, ahora no se te olvide seguir haciendolo para no perder la practica'];

///Listas de pasos GENERADAS:
List<String> ListaControlVision = [
  'Paso 1 - Compra guardianes (wards) al inicio del juego y colócalos en puntos estratégicos del mapa.',
  'Paso 2 - Aprende a colocar guardianes en arbustos y lugares clave para maximizar la visión del equipo.',
  'Paso 3 - Usa el Lente Relevador (Sweeping Lens) para detectar y eliminar guardianes enemigos.',
  'Paso 4 - Coordina con tu equipo para asegurar que siempre haya visión en objetivos importantes como el Dragón y el Barón Nashor.',
  'Termino - Excelente trabajo. Mantener el control de visión es clave para ganar partidas. Sigue practicando para mejorar.'
];
List<String> ListaPosicionamiento = [
  'Paso 1 - Practica mantenerte en una posición segura mientras infliges daño a los enemigos en la herramienta de práctica.',
  'Paso 2 - Juega partidas con amigos o bots y enfócate en mantener una buena posición en peleas de equipo.',
  'Paso 3 - Observa y analiza tus partidas para identificar errores de posicionamiento y aprender de ellos.',
  'Paso 4 - Ajusta tu posición según el desarrollo de la pelea, asegurándote de no quedar expuesto a los ataques enemigos.',
  'Termino - Bien hecho, has completado la rutina de posicionamiento. Sigue practicando para dominar tu posición en cada pelea.'
];

 final RutinaLol1_ComoFarmear = new Rutinas(1, "Como Farmear", 
 "En esta rutina aprenderas como ocupar tus manos para farmear ricos minions.", 
 ListaFarmear, "Que sepas farmear", "Facil");

 final RutinaLol2_ControlarVision = new Rutinas(2, "Control de visión", 
 "En esta rutina aprenderas a ocupar wards.", 
 ListaControlVision, "Aprender posicionamiento y colocación de Wards", "Media");
 
  final RutinaLol3_Posicionamiento= new Rutinas(3, "Como Posicionarse", 
 "En esta rutina aprenderas a posicionarte.", 
 ListaPosicionamiento, "Aprender posicionamiento", "Media");

 List<Rutinas> ListaRutinasLol = [RutinaLol1_ComoFarmear, RutinaLol2_ControlarVision, RutinaLol3_Posicionamiento];

      final LeagueOfLgends = new Juegos(1, 'League of Legends', 'Juego jugador contra jugador donde se pelean por destruir la base Enemiga para ganar.',
      ListaRutinasLol, 'MOBA PVP 5v5', 'assets/FarmearLol.jpg');


//-----------------------------------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------------------------------
///listas generadas
List<String> ListaPracticaDisparo = [
  'Paso 1 - Abre el modo de práctica, ve a Jugar => Entrenamiento => Campo de tiro.',
  'Paso 2 - Practica tu puntería con diferentes héroes. Intenta hacer headshots para mejorar tu precisión.',
  'Paso 3 - Ajusta la sensibilidad del ratón hasta encontrar la que te resulte más cómoda.',
  'Paso 4 - Practica habilidades específicas de cada héroe para familiarizarte con su uso en combate.',  'Paso 5 - Juega partidas rápidas para poner en práctica lo aprendido en el campo de tiro.',
  'Termino - Bien hecho, has completado la rutina de práctica de disparo. Recuerda seguir practicando para mejorar constantemente.'
];
List<String> ListaCoordinacionEquipo = [
  'Paso 1 - Juega con amigos o únete a un grupo para mejorar la comunicación en el juego.',
  'Paso 2 - Practica usando comandos de voz y texto para coordinar estrategias durante las partidas.',
  'Paso 3 - Trabaja en sincronizar tus habilidades y movimientos con los de tu equipo.',
  'Paso 4 - Participa en partidas personalizadas para practicar jugadas específicas y mejorar la coordinación.',
  'Termino - Bien hecho, has completado la rutina de coordinación de equipo. Una buena comunicación es esencial para la victoria.'
];
List<String> ListaHabilidadesDefinitivas = [
  'Paso 1 - Practica el uso de la habilidad definitiva de tu héroe en el campo de tiro.',
  'Paso 2 - Juega partidas rápidas y enfócate en usar la habilidad definitiva en momentos clave.',
  'Paso 3 - Coordina con tu equipo para realizar combinaciones efectivas de habilidades definitivas.',
  'Paso 4 - Observa y analiza tus partidas para mejorar el momento y la posición del uso de la habilidad definitiva.',
  'Termino - Bien hecho, has completado la rutina de uso de habilidades definitivas. Sigue practicando para dominar su uso.'
];

  final RutinaOverwatch1_PracticaDisparo= new Rutinas(4, "Aprende a Disparar", 
 "En esta rutina mejoraras tu presición.", 
 ListaPracticaDisparo, "Aprender a apunta mejor", "Media");

  final RutinaOverwatch2_CoordinacionEquipo= new Rutinas(5, "Aprende a coordinarte con tu equipo", 
 "En esta rutina mejoraras tu coordinarte.", 
 ListaCoordinacionEquipo, "Aprender coordinacion", "Media");

  final RutinaOverwatch3_HabilidadesDefinitivaso= new Rutinas(6, "Aprende las habilidades definitivas de los heroes", 
 "En esta rutina aprenderas las definitivas de los heroes.", 
 ListaHabilidadesDefinitivas, "Aprender Habilidades Definitivas", "Alta");

  List<Rutinas> ListaRutinasOverwatch = [RutinaOverwatch1_PracticaDisparo, RutinaOverwatch2_CoordinacionEquipo, RutinaOverwatch3_HabilidadesDefinitivaso];


      final Overwatch2 = new Juegos(2, 'Overwatch 2', 'Juego jugador contra jugador donde se pelean por destruir la base Enemiga para ganar.',
      ListaRutinasOverwatch, 'Shooter PVP 5v5', 'assets/FarmearLol.jpg');


//-----------------------------------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------------------------------
List<String> ListaPracticaCombos = [
  'Paso 1 - Abre el modo de entrenamiento, selecciona tu personaje principal y un personaje oponente.',
  'Paso 2 - Practica tus ataques básicos y encuentra los mejores movimientos de inicio para tus combos.',
  'Paso 3 - Intenta encadenar diferentes ataques para crear combinaciones fluidas. Ajusta según sea necesario.',
  'Paso 4 - Practica los combos en diferentes porcentajes de daño del oponente para adaptarte a situaciones de combate reales.',
  'Termino - Bien hecho, has completado la rutina de práctica de combos. Sigue practicando para dominar a tu personaje.'
];
List<String> ListaDefensaEvasion = [
  'Paso 1 - Abre el modo de entrenamiento y selecciona tu personaje principal.',
  'Paso 2 - Practica el uso del escudo y los esquives para evitar ataques enemigos.',
  'Paso 3 - Aprende a hacer parrys y contrarrestar ataques enemigos con precisión.',
  'Paso 4 - Practica moverte constantemente para mantenerte fuera del alcance de los ataques enemigos.',
  'Termino - Bien hecho, has completado la rutina de defensa y evasión. Mantén la calma y sigue practicando para mejorar tu defensa.'
];
List<String> ListaControlEscenario = [
  'Paso 1 - Abre el modo de entrenamiento y selecciona tu personaje principal.',
  'Paso 2 - Practica mantener el control del centro del escenario y empujar a tu oponente hacia los bordes.',
  'Paso 3 - Aprende a utilizar los diferentes elementos del escenario a tu favor, como plataformas y obstáculos.',
  'Paso 4 - Practica técnicas de recuperación para volver al escenario cuando te lancen fuera de él.',
  'Termino - Bien hecho, has completado la rutina de control de escenario. Sigue practicando para dominar cada escenario.'
];

 final RutinaSmash1_PracticaCombos = new Rutinas(7, "Aprende combos", 
 "En esta rutina aprenderas a hacer combo.", 
 ListaPracticaCombos, "Aprender combos", "media");

 final RutinaSmash2_Evasion        = new Rutinas(8, "Aprende evasion", 
 "En esta rutina aprenderas a hacer evasiones y defensas exitosas.", 
 ListaDefensaEvasion, "Aprender a evadir", "alto");

 final RutinaSmash3_Escenario      = new Rutinas(9, "Aprende de los escenarios", 
 "En esta rutina aprenderas los distintos escenarios.", 
 ListaControlEscenario, "Aprender a escenario", "alto");

  List<Rutinas> ListaRutinasSmash = [RutinaSmash1_PracticaCombos, RutinaSmash2_Evasion, RutinaSmash3_Escenario];

      final Smash = new Juegos(3, 'Smash', 'Juego jugador contra jugador/computadora.',
      ListaRutinasSmash, 'MOBA PVP', 'assets/FarmearLol.jpg');

//-----------------------------------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------------------------------

List<Juegos> ListaJuegos = [LeagueOfLgends, Overwatch2, Smash];
 Juegos IdentificarJuego(int id){
print(widget.id); 
    return ListaJuegos.firstWhere((juego) => juego.IdJuego == id);
  }

int idBusqueda = widget.id;
Juegos? juegoEscogidoBusqueda = IdentificarJuego(idBusqueda);
    return Scaffold(
      appBar: AppBar(
          title: Text
            (
              juegoEscogidoBusqueda.Nombre,
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
                    Title(color: Colors.white, child:Text(juegoEscogidoBusqueda.Nombre),),
                    SizedBox(height: 20, width: 1000,),
                    Text(juegoEscogidoBusqueda.Descripcion),
                    Text('Genero: ' + juegoEscogidoBusqueda.ModosDeJuego),
                    
                  ],
                ),
              ),
            ),
              Center(
                child:Card
                (
                  elevation: 4,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>
                      [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(2.0),
                          ),
                        ),
                        TextButton
                          (
                            onPressed: ()
                            {
                              Navigator.pushReplacementNamed(context,'pages/lib/rutine', arguments: juegoEscogidoBusqueda.JuegosRutinas![0].Pasos);
                            }, 
                            child: Text(juegoEscogidoBusqueda.JuegosRutinas![0].Nombre),
                          ),
                        Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(2.0), 
                        ),
                      ),
                      
                      TextButton( 
                        child: Text(juegoEscogidoBusqueda.JuegosRutinas![1].Nombre),
                        onPressed: ()
                            {
                              Navigator.pushReplacementNamed(context,'pages/lib/rutine', arguments: juegoEscogidoBusqueda.JuegosRutinas![1].Pasos);
                            }, 
                      ),
                      
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      TextButton( 
                        child: Text(juegoEscogidoBusqueda.JuegosRutinas![2].Nombre),
                        onPressed: ()
                            {
                              Navigator.pushReplacementNamed(context,'pages/lib/rutine', arguments: juegoEscogidoBusqueda.JuegosRutinas![2].Pasos);
                            }, 
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
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
