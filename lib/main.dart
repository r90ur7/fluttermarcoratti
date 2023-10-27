import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Aula 3',
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        home: const WidgetLogin());
  }
}

class WidgetLogin extends StatefulWidget {
  const WidgetLogin({super.key});
  @override
  _WidgetLoginState createState() => _WidgetLoginState();
}

class _WidgetLoginState extends State<WidgetLogin> {
  final TextStyle estilo = const TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  @override
  Widget build(BuildContext context) {
    final emailFielld = TextField(
      obscureText: false,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final passFielld = TextField(
      obscureText: true,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final buttonLogin = ButtonTheme(
      minWidth: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
          elevation: MaterialStateProperty.all<double?>(30.0),
        ),
        child: Text("Login",
            textAlign: TextAlign.center,
            style: estilo.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
        onPressed: () {},
      ),
    );

    return Scaffold(
      body: Center(
          child: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 150.0,
              child: Image.asset(
                "assets/images/1.png",
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 40.0),
            emailFielld,
            const SizedBox(height: 20.0),
            passFielld,
            const SizedBox(height: 30.0),
            buttonLogin,
          ],
        ),
      )),
    );
  }
}
