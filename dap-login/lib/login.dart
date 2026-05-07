import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class Login extends StatefulWidget {
  const Login({super.key});
   
  @override
  State<Login> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<Login> {
   @override
    Widget build(BuildContext context) {
  String title = "hola";
  final TextEditingController userController = TextEditingController();
  final TextEditingController passController = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: Text(title)),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: userController,
                decoration: const InputDecoration(
                  labelText: "Usuario",
                ),
              ),
              TextField(
                controller: passController,
                decoration: const InputDecoration(
                  labelText: "Contraseña",
                ),
                obscureText: true,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (userController.text.isEmpty || passController.text.isEmpty){
                     ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Completa todo")),
                    );
                  } 
                  else if (userController.text == "rama" &&
                      passController.text == "49722") {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Login bien")),
                     
                    );
                    context.go ('/home');
                    setState(() {
                      title = "Bienvenido";
                    });
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Login mal")),
                    );
                  }
                },
                child: const Text("Ingresar"),
              ),
            ],
          ),
      )
    );
  }
}
