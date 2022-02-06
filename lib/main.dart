import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: ListaTransferencias(),
      appBar: AppBar(
        title: Text('Transferências'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    ),
  ));
}

class ListaTransferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ItemTransferencia(Transferencia(100.0, 10000)),
        ItemTransferencia(Transferencia(250.0, 50000)),
        ItemTransferencia(Transferencia(4680.0, 30000)),
      ],
    );
  }
}

class ItemTransferencia extends StatelessWidget {
  @override
  final Transferencia _transferencia;

  ItemTransferencia(this._transferencia);

  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      leading: Icon(Icons.monetization_on),
      title: Text(this._transferencia.valor.toString()),
      subtitle: Text(this._transferencia.numeroConta.toString()),
    ));
  }
}

class Transferencia {
  final double valor;
  final int numeroConta;
  Transferencia(this.valor, this.numeroConta);
}
