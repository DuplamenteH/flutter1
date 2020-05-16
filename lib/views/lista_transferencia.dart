

import 'package:bytebank/models/transferencia.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'formularioTransferencia.dart';
import 'itensTransferencia.dart';

class ListaTransferencias extends StatefulWidget{
    final List<Transferencia> _transferencias = List(); 
    @override
    State<StatefulWidget> createState(){
      return ListaTransferenciasState();
    }
  

  }

class ListaTransferenciasState extends State<ListaTransferencias>{

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text('Transferências',)),
        body: ListView.builder(
          itemCount: widget._transferencias.length,
          itemBuilder: (context,indice){
            final transferencia = widget._transferencias[indice];
            return ItensTransferencia(transferencia);
          },
        ),
         floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add_circle),
              onPressed: (){
                final Future <Transferencia>future = Navigator.push(context, 
                MaterialPageRoute(builder: (context){
                  return FormularioTransferencia();
                }));

                future.then((transferenciaCriada){
                  Future.delayed(Duration(seconds:4),() {
                    debugPrint("Chegou no future");
                    debugPrint('$transferenciaCriada');
                    
                    if(transferenciaCriada!= null){
                      setState(() {
                        widget._transferencias.add(transferenciaCriada);
                      });
                    } 
                  });
                  
                  
                });
                
              },
              
            )
    );
}