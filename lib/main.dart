import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Demo Flutter',
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //context en donde estoy
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página Principal'),
        leading: const Icon(Icons.menu),
        shadowColor: Color.fromARGB(255, 85, 255, 1),
        elevation: 20.0,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))),
        backgroundColor: Colors.red,
        actionsIconTheme: IconThemeData(color: Colors.red),
        actions: <Widget>[
          IconButton(icon: const Icon(Icons.search), onPressed: () => {}),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                final route = MaterialPageRoute(
                  builder: (context) => const SecondScreeen(),
                );
                Navigator.push(context, route);
              },
              child: const Text('Entrar al sistema del alumno'),
            ),
            ElevatedButton(
              onPressed: () {
                final route = MaterialPageRoute(
                  builder: (context) => const SecondScreeen(),
                );
                Navigator.push(context, route);
              },
              child: const Text('Salir'),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondScreeen extends StatelessWidget {
  const SecondScreeen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Datos del alumno'),
        leading: const Icon(Icons.menu),
        shadowColor: Color.fromARGB(255, 85, 255, 1),
        elevation: 20.0,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))),
        backgroundColor: Colors.red,
        actionsIconTheme: IconThemeData(color: Colors.red),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/image/perfil.jpg',
              width: 200.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text('Jairo Emmanuel Martinez Olvera',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(
              height: 20.0,
            ),
            Text('Alumno: 5° Cuatrimestre',
                style: TextStyle(
                  fontSize: 20.0,
                )),
            SizedBox(
              height: 20.0,
            ),
            Text('Carrera: Tecnologías de la Información',
                style: TextStyle(
                  fontSize: 20.0,
                )),
            SizedBox(
              height: 20.0,
            ),
            Text('Promedio: DE',
                style: TextStyle(
                  fontSize: 20.0,
                )),
            SizedBox(
              height: 20.0,
            ),
            Text('Grupo: TI01SM-20',
                style: TextStyle(
                  fontSize: 20.0,
                )),
            SizedBox(
              height: 32.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Volver'),
            ),
          ],
        ),
      ),
    );
  }
}
