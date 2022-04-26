import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {


  final opciones = ['uno', 'Dos', 'tres', 'cuatro', 'cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentens Temp'),
      ),
      body: ListView(
       // children: _crearItems()
       children: _crerarItemsCorto()
      ),
    );
  }

  List<Widget> _crearItems() {

    List<Widget> lista = <Widget>[];

    for (String opt in opciones){
      final tempWidget = ListTile(
        title: Text(opt),
      );

      lista..add(tempWidget)
           ..add(Divider(height: 20, color: Colors.blue[300],));
    }

    return lista;
  }

  List<Widget> _crerarItemsCorto() {
    return opciones.map( (item ) {
      return Column(
        children: [
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('cualquier cosa'),
            leading: Icon( Icons.account_balance_wallet_rounded),
            trailing: Icon(Icons.access_time) ,
            onTap: () {},
          ),
          Divider()
        ],
      );
    }).toList();
  
  }


}
