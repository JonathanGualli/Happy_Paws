import 'package:flutter/material.dart';
import 'package:happy_paws/services/auth_service.dart';
import 'package:provider/provider.dart';

class RegistrerScreen extends StatelessWidget {
  const RegistrerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    const paddingText = 30.0;
    const withContainer = 280.0;

    final authService = Provider.of<AuthService>(context);

    return Scaffold(
      //resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //const SizedBox(width: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                    child: const Text(
                      'Registrarse',
                      style: TextStyle(
                          color: Color(0xFF440A67),
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(width: 25),
                ],
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                child: Center(
                  child: Image.asset(
                    'assets/registrerImage.png',
                    height: 200,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: paddingText),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Nombre: ',
                      style: TextStyle(fontSize: 20, color: Color(0xFF27023E)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 44,
                      width: withContainer,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32.0),
                        color: const Color(0xFFDADAFF),
                      ),
                      child: const TextField(
                        textAlign: TextAlign.center,
                        //controller: passwordController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Nombre del propietario',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: paddingText),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Dirección de correo: ',
                      style: TextStyle(fontSize: 20, color: Color(0xFF27023E)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 44,
                      width: withContainer,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32.0),
                        color: const Color(0xFFDADAFF),
                      ),
                      child: TextField(
                        textAlign: TextAlign.center,
                        controller: emailController,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Correo electrónico',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: paddingText),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Número telefónico: ',
                      style: TextStyle(fontSize: 20, color: Color(0xFF27023E)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 44,
                      width: withContainer,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32.0),
                        color: const Color(0xFFDADAFF),
                      ),
                      child: const TextField(
                        textAlign: TextAlign.center,
                        //controller: passwordController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Número telefónico',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Contraseña: ',
                      style: TextStyle(fontSize: 20, color: Color(0xFF27023E)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 44,
                      width: withContainer,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32.0),
                        color: const Color(0xFFDADAFF),
                      ),
                      child: TextField(
                        textAlign: TextAlign.center,
                        controller: passwordController,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Contraseña',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        const MaterialStatePropertyAll(Color(0xFF57419D)),
                    fixedSize: const MaterialStatePropertyAll(Size(323, 44)),
                    shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32)))),
                onPressed: () async {
                  await authService.createUserWithEmailAndPassword(
                      emailController.text, passwordController.text);
                  Navigator.pop(context);
                },
                child: const Text(
                  'Crear una cuenta ahora !!',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 15,
              )
            ],
          ),
        ),
      ),
    );
  }
}
