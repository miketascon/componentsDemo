import 'package:flutter/material.dart';
import 'package:components/src/src/providers/menu_provider.dart';
import 'package:components/src/src/utils/icons_string_util.dart';
import 'package:components/src/src/pages/alert_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Components'),
        ),
        body: _lista());
  }

  Widget _lista() {
    
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot ){
        return ListView(
          children: _crearListaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _crearListaItems(data, context) {
    
    final List<Widget> opciones = [];

    data.forEach((opt) { 

      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon( Icons.keyboard_arrow_right, color: Colors.blue, ),
        onTap: () {

          Navigator.pushNamed(context, opt['ruta']);
          /* final route = MaterialPageRoute(
            builder: (context) {
              return AlertPage();
            }
          );
          Navigator.push(context, route); */
        },
      );

      opciones..add(widgetTemp)
              ..add(Divider());

    });

    return opciones;
  }
}
