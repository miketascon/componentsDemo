import 'package:flutter/material.dart';


class AvatarPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar'),
        actions: [

          Container(
            padding: EdgeInsets.all(10),
            child: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage('https://as.com/meristation/imagenes/2020/07/14/noticias/1594714732_417387_1594714761_noticia_normal.jpg'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage('https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/batman-peliculas-orden-fotogramas-1616515164.jpg'),
        ),
      ),
    );
  }
}