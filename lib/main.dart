import 'package:bytebank/views/lista_transferencia.dart';
import 'package:flutter/material.dart';

void main() => runApp(Bytebank());


  class Bytebank extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
          theme: ThemeData.dark(),
          home: ListaTransferencias()
        );
    }
  }