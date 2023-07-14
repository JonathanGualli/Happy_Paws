import 'package:flutter/material.dart';

class RegistrerScreen extends StatelessWidget {
  const RegistrerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(width: 10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Registrarse',
                style: TextStyle(
                    color: Color(0xFF440A67),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 25),
            ],
          ),
          Center(
            child: Image.asset(
              'assets/registrerImage.png',
              height: 200,
            ),
          ),
          Column(
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
                width: 274,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32.0),
                  color: const Color(0xFFDADAFF),
                ),
                child: TextField(
                  textAlign: TextAlign.center,
                  controller: passwordController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Nombre del propietario',
                  ),
                ),
              ),
            ],
          ),
          Column(
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
                width: 274,
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
          Column(
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
                width: 274,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32.0),
                  color: const Color(0xFFDADAFF),
                ),
                child: TextField(
                  textAlign: TextAlign.center,
                  controller: passwordController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Número telefónico',
                  ),
                ),
              ),
            ],
          ),
          Column(
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
                width: 274,
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
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    const MaterialStatePropertyAll(Color(0xFF57419D)),
                fixedSize: const MaterialStatePropertyAll(Size(323, 44)),
                shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32)))),
            onPressed: () {},
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
    );
  }
}
