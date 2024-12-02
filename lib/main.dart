import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart'; // Certifique-se de adicionar o pacote ao pubspec.yaml
import 'login.dart';
import 'esqueceuSenha.dart';
import 'criarUsuario.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Necessário para inicializações assíncronas no Flutter
  await Supabase.initialize(
    url: 'https://zseieobqoexfvzwydccp.supabase.co', // Substitua pelo URL do Supabase
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InpzZWllb2Jxb2V4ZnZ6d3lkY2NwIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTczMzE0MjQ4MSwiZXhwIjoyMDQ4NzE4NDgxfQ.ZVeK6iAYd-VUm77LKRixpSEkDGy4VbGjr8S-c5iT12g', // Substitua pela chave anônima do Supabase
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Too-Doo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
      routes: {
        '/forgot-password': (context) => ForgotPasswordScreen(),
        '/create-account': (context) => CreateAccountScreen(),
      },
    );
  }
}
