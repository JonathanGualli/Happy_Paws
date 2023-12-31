import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:happy_paws/screens/login_screen.dart';
import 'package:happy_paws/screens/registrer.dart';
import 'package:happy_paws/screens/wrapper.dart';
import 'package:happy_paws/services/auth_service.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthService>(create: (_) => AuthService()),
      ],
      child: MaterialApp(
        title: 'Happy Paws',
        initialRoute: '/',
        routes: {
          '/': (context) => const Wrapper(),
          '/login': (context) => const LoginScreen(),
          '/register': (context) => const RegistrerScreen(),
        },
      ),
    );
  }
}
