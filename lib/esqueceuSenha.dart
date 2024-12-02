import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Esqueceu a Senha'),
      ),
      body: Center(
        child: Text(
          'Tela de recuperação de senha',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
