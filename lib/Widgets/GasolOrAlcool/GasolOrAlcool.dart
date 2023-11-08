import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GasolOrAlcool extends StatefulWidget {
  const GasolOrAlcool({super.key});

  @override
  State<GasolOrAlcool> createState() => _GasolOrAlcoolState();
}

class _GasolOrAlcoolState extends State<GasolOrAlcool> {
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  TextEditingController gasolinaController = TextEditingController();
  TextEditingController alcoolController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Gasolina ou Alcool ?',
            style: GoogleFonts.aboreto(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.deepOrangeAccent,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: () {},
            )
          ],
        ),
        backgroundColor: Colors.blueGrey,
        body: Form(
          key: _formkey,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Icon(
                  Icons.directions_car,
                  size: 60.0,
                  color: Colors.amber,
                ),
                buildTextFormFieldGasolina(),
                buildTextFormFieldAlcool(),
                buildContainerButton(context),
                buildTextInfo()
              ]),
        ));
  }

  buildTextFormFieldGasolina() {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        labelText: 'Preço da Gasolina',
        labelStyle: TextStyle(color: Colors.black, fontSize: 20.0),
      ),
    );
  }

  buildTextFormFieldAlcool() {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        labelText: 'Preço do Alcool',
        labelStyle: TextStyle(color: Colors.black, fontSize: 20.0),
      ),
      controller: alcoolController,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Informe o valor do Alcool';
        }
        return null;
      },
    );
  }

  buildContainerButton(BuildContext context) {
    return Container(
      height: 80.0,
      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: ElevatedButton(
        onPressed: () {
          if (_formkey.currentState!.validate()) {
            // _calcular();
            FocusScope.of(context).requestFocus(FocusNode());
          }
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.deepOrangeAccent,
        ),
        child: const Text(
          'Calcular',
          style: TextStyle(color: Colors.white, fontSize: 30.0),
        ),
      ),
    );
  }
  
  buildTextInfo() {
    return const Text(
      'Informe os valores de Gasolina e Alcool',
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.white, fontSize: 25.0),
    );
  }
}
