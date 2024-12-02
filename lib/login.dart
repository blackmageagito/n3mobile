import 'package:flutter/material.dart';
import 'package:todolist/tarefas.dart';


class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    String username = _usernameController.text;
    String password = _passwordController.text;

    if (username == "chundah@gmail.com" && password == "1234") {
      Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TaskListScreen()),
              );
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Falha no Login'),
          content: Text('Usuário ou senha incorretos.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'LOGIN',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF3470a7),
                  fontFamily: 'popbold'),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(fontSize: 13, fontFamily: 'poppins'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide(color: Colors.transparent),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Senha',
                labelStyle: TextStyle(fontSize: 13, fontFamily: 'poppins'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide(color: Colors.transparent),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _login,
              child: Text('Entrar'),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                minimumSize: Size(200, 60),
                foregroundColor: Colors.white,
                textStyle: TextStyle(fontSize: 17, fontFamily: 'popbold'),
                backgroundColor: Color(0xFF3470a7),
                padding: EdgeInsets.symmetric(vertical: 15),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () => Navigator.pushNamed(context, '/forgot-password'),
                  child: Text(
                    'ESQUECEU A SENHA?',
                    style: TextStyle(color: Color(0xFF3470a7), fontFamily: 'poppins'),
                  ),
                ),
                SizedBox(width: 16),
                TextButton(
                  onPressed: () => Navigator.pushNamed(context, '/create-account'),
                  child: Text(
                    'CRIAR UMA CONTA',
                    style: TextStyle(color: Color(0xFF3470a7), fontFamily: 'poppins'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
