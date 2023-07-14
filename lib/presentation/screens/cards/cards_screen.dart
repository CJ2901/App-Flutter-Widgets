import 'package:flutter/material.dart';

const cards = < Map<String, dynamic> >[
  {'elevation': 0.0, 'label': 'Análisis y Diseño de Sistemas', 'sigla': 'ADS'},
  {'elevation': 1.0, 'label': 'Servicios basadas en Internet', 'sigla': 'SIN'},
  {'elevation': 2.0, 'label': 'Simulación', 'sigla': 'SIM'},
  {'elevation': 3.0, 'label': 'Impacto y Gestión Ambiental', 'sigla': 'IGA'},
  {'elevation': 4.0, 'label': 'Gestión de Proyectos', 'sigla': 'PYT'},
  {'elevation': 5.0, 'label': 'Inteligencia de Negocios', 'sigla':'IDN'},
  {'elevation': 6.0, 'label': 'Gestión de la Calidad', 'sigla': 'GC'},
  {'elevation': 7.0, 'label': 'Gestión de la Seguridad Informática', 'sigla': 'GSI'},
  {'elevation': 8.0, 'label': 'Gestión de la Innovación', 'sigla': 'GSI'},
  {'elevation': 9.0, 'label': 'Finanzas Empresariales', 'sigla': 'FIN'},
  
];


class CardsScreen extends StatelessWidget {
  static const String routeName = 'cards_screen';

  const CardsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('CardsScreen'),
          centerTitle: true,
      ),
      body: const _CardView(),
    );
  }
}

class _CardView extends StatelessWidget {
  const _CardView();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
    
          ...cards.map(
            (card) => _CardType1( elevation: card['elevation'] , label: card['label'], )
          ),
    
          ...cards.map(
            (card) => _CardType2( elevation: card['elevation'] , label: card['label'], sigla: card['sigla'], )
          ),
    
          ...cards.map(
            (card) => _CardType3( elevation: card['elevation'] , label: card['label'], sigla: card['sigla'], )
          ),
    
          
          
        ],
      ),
    );
  }
}

class _CardType1 extends StatelessWidget {

  final String label;
  final double elevation;

  const _CardType1({
    required this.label, 
    required this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
    elevation: elevation,
    child: Padding(
      padding: const EdgeInsets.fromLTRB(10, 5, 10, 10) ,
      child: Column(
        children: [

          const Align(
            alignment: Alignment.centerRight,
            child: Icon( Icons.more_vert_outlined )
          ),

          Align(
            alignment: Alignment.bottomLeft,
            child: Text(label, style: const TextStyle(fontSize: 20),)
          ),

        ],
      ),
    ),
        );
  }
}

class _CardType2 extends StatelessWidget {

  final String label;
  final double elevation;
  final String sigla;

  const _CardType2({
    required this.label, 
    required this.elevation, 
    required this.sigla,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Card(
    shape: RoundedRectangleBorder(
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      side: BorderSide(
        color: colors.primary,
        width: 1.5,
      ),
    ),
    elevation: elevation,
    child: Padding(
      padding: const EdgeInsets.fromLTRB(10, 5, 10, 10) ,
      child: Column(
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: FilledButton(
                  onPressed: () {},
                  child: Text(sigla, style: const TextStyle(fontSize: 15)),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  onPressed: () {}, 
                  icon: const Icon(Icons.more_vert_outlined, size: 25)
                  ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(label, style: const TextStyle(fontSize: 20),)
          ),

        ],
      ),
    ),
        );
  }
}


class _CardType3 extends StatelessWidget {

  final String label;
  final double elevation;
  final String sigla;

  const _CardType3({
    required this.label, 
    required this.elevation, 
    required this.sigla,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Card(
    shape: RoundedRectangleBorder(
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      side: BorderSide(
        color: colors.primary,
        width: 1.5,
      ),
    ),
    elevation: elevation,
    child: ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      child: Stack(
        children: [
          Image.network(
          'https://picsum.photos/id/${elevation.toInt()}/600/250',
          fit: BoxFit.cover,
          height: 120,
          width: double.infinity,
          ),
      
          Positioned(
            bottom: 0,
            child: Container(
              width: 600,
              decoration: const BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
              ),
              alignment: Alignment.bottomLeft,
          
              child: Padding(          
                padding: const EdgeInsets.all(8.0),
                child: Text(label, style: const TextStyle(fontSize: 20, color: Colors.white), )
              ),
            ),
            ),
      
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: FilledButton(
                    onPressed: () {},
                    child: Text(sigla, style: const TextStyle(fontSize: 15)),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () {}, 
                  icon: const Icon(Icons.more_vert_outlined, size: 25, color: Colors.white)
                  ),
              ),
            ],
          ),
      
          
        ],
      ),
    ),
        );
  }
}

