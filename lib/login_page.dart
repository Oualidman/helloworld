import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String? errorMessage; // Variable para almacenar el mensaje de error

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Iniciar Sesión'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(labelText: 'Email'),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, introduce tu email';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(labelText: 'Contraseña'),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, introduce tu contraseña';
                  }
                  return null;
                },
              ),
              if (errorMessage != null) ...[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                      Text(errorMessage!, style: TextStyle(color: Colors.red)),
                ),
              ],
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() == true) {
                    // Si el formulario es válido, limpiar el mensaje de error
                    setState(() {
                      errorMessage = null;
                    });
                    // Proceder con la lógica de inicio de sesión aquí
                  } else {
                    // Si el formulario no es válido, mostrar un mensaje de error
                    setState(() {
                      errorMessage =
                          'Por favor, completa todos los campos correctamente.';
                    });
                  }
                },
                child: Text('Iniciar Sesión'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}