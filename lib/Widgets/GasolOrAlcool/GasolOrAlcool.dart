import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GasolOrAlcool extends StatefulWidget {
  const GasolOrAlcool({super.key});

  @override
  State<GasolOrAlcool> createState() => _GasolOrAlcoolState();
}

class _GasolOrAlcoolState extends State<GasolOrAlcool> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  TextEditingController gasolinaController = TextEditingController();
  TextEditingController alcoolController = TextEditingController();

  String _infoText = "Informe os valores dos combustiveis";

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
              onPressed: () {
                _resetValues();
              },
            )
          ],
        ),
        backgroundColor: Colors.blueGrey,
        body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(80.0, 0, 80.0, 0),
          child: Form(
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
          ),
        ));
  }

  buildTextFormFieldGasolina() {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        labelText: 'Preço da Gasolina',
        labelStyle: TextStyle(color: Colors.black, fontSize: 20.0),
      ),
      style: const TextStyle(fontSize: 30.0),
      controller: gasolinaController,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Informe o valor da Gasolina';
        }
        final isDigitsOnly = RegExp(r'^\d+(\.\d+)?$').hasMatch(value);
        if (!isDigitsOnly) {
          return 'Valor invalido';
        }
        return null;
      },
    );
  }

  buildTextFormFieldAlcool() {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        labelText: 'Preço do Alcool',
        labelStyle: TextStyle(color: Colors.black, fontSize: 20.0),
      ),
      style: const TextStyle(fontSize: 30.0),
      controller: alcoolController,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Informe o valor do Alcool';
        }
        final isDigitsOnly = RegExp(r'^\d+(\.\d+)?$').hasMatch(value);
        if (!isDigitsOnly) {
          return 'Valor invalido';
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
            _calcular();
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
    return Text(
      _infoText,
      textAlign: TextAlign.center,
      style: const TextStyle(color: Colors.white, fontSize: 25.0),
    );
  }

  void _calcular() {
    setState(() {
      double gasolina = double.parse(gasolinaController.text);
      double alcool = double.parse(alcoolController.text);

      double resultado = (alcool / gasolina);
      if (resultado > 0.70) {
        _infoText =
            "Percentual : (${resultado.toStringAsPrecision(3)})\n\nVale  a pena abastecer com Gasolina";
      } else {
        _infoText =
            "Percentual : (${resultado.toStringAsPrecision(3)})\n\nVale  a pena abastecer com Alcool";
      }
    });
  }

  _resetValues() {
    setState(() {
      gasolinaController.text = '';
      alcoolController.text = '';
      _infoText = 'Informe os valores dos combustiveis';
    });
  }
}
