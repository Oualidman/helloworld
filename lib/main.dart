import 'package:flutter/material.dart';
import 'login_page.dart'; // Asegúrate de que esta ruta sea correcta según tu estructura de archivos


void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Elimina la etiqueta de depuración
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pantalla de Inicio'),
        ),
        body: LoginScreen(),
      ),
    );
  }
}


class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

           Image.asset(
                'assets/image.jpg',
                width: 500,
                height: 500,
              ),

          Padding(
            padding: EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: () {
                // Navegar a LoginPage cuando se presiona el botón Iniciar Sesión
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: Text('Iniciar Sesión'),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: () {
                // Implementa lo que debe suceder cuando se presiona Registrarse
                // print('Registrarse presionado'); a ver este cambio
              },
              child: Text('Registrarse'),
            ),
          ),

        ],
      ),
    );
  }
}