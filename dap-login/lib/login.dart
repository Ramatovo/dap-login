
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class login extends StatefulWidget {
  const login({super.key});
   
  @override
  State<login> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<login> {
   @override
    Widget build(BuildContext context) {
  String title = "inicio";
  final TextEditingController userController = TextEditingController();
  final TextEditingController passController = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: Text(title)),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: userController,
                decoration:  InputDecoration(
                  labelText: "Usuario",
                ),
              ),
              TextField(
                controller: passController,
                decoration:  InputDecoration(
                  labelText: "Contraseña",
                )
              ),
               SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (userController.text.isEmpty || passController.text.isEmpty){
                     ScaffoldMessenger.of(context).showSnackBar(
                       SnackBar(content: Text("Completa todo")),
                    );
                  } 
                  else if (userController.text == "rama" &&
                      passController.text == "49722") {
                    ScaffoldMessenger.of(context).showSnackBar(
                       SnackBar(content: Text("Login bien")),
                     
                    );
                    context.go ('/home');
                    setState(() {
                      title = "Bienvenido";
                    });
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                       SnackBar(content: Text("Login mal")),
                    );
                  }
                },
                child:  Text("Ingresar"),
              ),
            ],
          ),
      );
  }
}
