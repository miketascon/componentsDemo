import 'package:flutter/material.dart';


class AlertPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () => _mostrarAlert(context),
          child: Text('Mostrar alert'),
          color: Colors.blue,
          textColor: Colors.white,
          shape: StadiumBorder(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_location),
        ),
    );
  }


  void _mostrarAlert( BuildContext context){
      showDialog(
          context: context, 
          barrierDismissible: true,
          builder: (context) {
             return AlertDialog(
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(20.0)
                 ),
               title: Text('Titulo'),
               content: Column(
                 mainAxisSize: MainAxisSize.min,
                 children: [
                   Text('Contenido de la caja de la alertA'),
                   FlutterLogo(size: 100,)
                 ],
               ),
               actions: [
                 TextButton(onPressed: () => Navigator.of(context).pop(), child: Text('Cancelar')),
                 TextButton(onPressed: () {
                   Navigator.of(context).pop();
                 }, child: Text('Ok')),
               ],
             );
          }
      );
  }
}