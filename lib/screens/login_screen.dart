import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Image.asset(
              'assets/loginImage.png',
              height: 289,
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Iniciar sesión con:',
                style: TextStyle(
                    color: Color(0xFF440A67),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 25),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                //padding: EdgeInsets.all(10.0),
                height: 44,
                width: 122,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: const Color(0xFF3B5998),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.facebook_sharp,
                      color: Colors.white,
                      size: 35,
                    ),
                    SizedBox(width: 5.0),
                    Text(
                      'Facebook',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                //padding: EdgeInsets.all(10.0),
                height: 44,
                width: 122,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: const Color(0xFFDB4A39),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.g_mobiledata_rounded,
                      color: Colors.white,
                      size: 40,
                    ),
                    SizedBox(width: 1.0),
                    Text(
                      'Google',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ],
          ),
          const Text(
            '- O -',
            style: TextStyle(
                color: Color(0xFF93329E),
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          Container(
            height: 44,
            width: 274,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32.0),
              color: const Color(0xFFDADAFF),
            ),
            padding: const EdgeInsets.only(left: 30),
            child: TextField(
              textAlign: TextAlign.justify,
              controller: emailController,
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Correo electrónico',
                  icon: Icon(
                    Icons.email,
                    color: Color(0xFF93329E),
                  )),
            ),
          ),
          Column(
            children: [
              Container(
                height: 44,
                width: 274,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32.0),
                  color: const Color(0xFFDADAFF),
                ),
                padding: const EdgeInsets.only(left: 30),
                child: TextField(
                  textAlign: TextAlign.justify,
                  controller: passwordController,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Contraseña',
                      icon: Icon(
                        Icons.lock,
                        color: Color(0xFF93329E),
                      )),
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('No estás registrado?',
                      style: TextStyle(color: Color(0xFF440A67), fontSize: 14)),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    'Crear Cuenta',
                    style: TextStyle(
                        color: Color(0xFFFF00E5),
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  )
                ],
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
              'Ingresar',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
