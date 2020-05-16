
import 'package:bytebank/models/transferencia.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ItensTransferencia extends StatelessWidget {

final Transferencia _transferencia;

  ItensTransferencia(this._transferencia);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child:ListTile(
         leading: Icon(Icons.monetization_on),
        title: Text(_transferencia.valor.toString()),
        subtitle: Text(_transferencia.numeroConta.toString()),
      )
    );
  }
  
}