import 'dart:io';


import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:image_picker/image_picker.dart';

void main() => runApp(new Intenciones());

void opencam() {
  var pict =ImagePicker.pickImage(source: ImageSource.camera);
}
/*
  File img;
  Future getImg() async{
    try {
      var image =await ImagePicker.pickImage(source: ImageSource.camera);
     setState((){
       img = image;
     }
        
      );
    } catch (e) {
      print("no jala");
    }

  }
  */


class Intenciones extends StatelessWidget{
 

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var children2 = <Widget>[
              Card( //esta tarjeta es para el acceso a pagina web
                elevation: 8.0,
                margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                child: Container(
                  decoration: 
                  BoxDecoration(color: Color.fromRGBO(64, 74, 96, .9)),
                child: ListTile(
                  contentPadding: 
                  EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  leading: Container(
                    padding: EdgeInsets.only(right: 12.0),
                    decoration: BoxDecoration(
                      border: Border(
                        right: 
                          BorderSide(width: 1.0, color: Colors.white))),
                child: Icon(Icons.language,color: Colors.white)),
                  title: Text(
                    'Abrir Url', style: TextStyle(color: Colors.white, fontWeight:  FontWeight.bold),
                  ),
                 
                   subtitle: Row(
                    children: <Widget>[
                    Icon(Icons.touch_app, color: Colors.yellowAccent),
                    Text("http://itcelaya.edu.mx", style: TextStyle(color: Colors.white))
                  ],
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right, 
                    color: Colors.white, 
                    size: 30,
                    ),
                  onTap: () async{
                    const url = 'http://itcelaya.edu.mx';
                    if(await canLaunch(url)) {
                      await launch(url);
                  }else{
                    print('No se pudo ejecutar');
                  }
                  },
                ),
                ),
              ),

               Card( //esta tarjeta sirve para hacer una llamada desde el celular
                elevation: 8.0,
                margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                child: Container(
                  decoration: BoxDecoration(color: Color.fromRGBO(64, 74, 96, .9)
                  ),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  leading: Container(
                    padding: EdgeInsets.only(right: 12.0),
                  decoration: BoxDecoration(
                    border: Border(right: BorderSide(width: 1.0, color: Colors.white))
                    ),
                    child: Icon(Icons.language,color: Colors.white) 
                    ),

                  title: Text('Llamada Telefonica', style: TextStyle(color: Colors.white),
                  ),
                 
                  
                  subtitle: Row(
                    children: <Widget>[
                    Icon(Icons.touch_app, color: Colors.yellowAccent),
                    Text("Tel: 4612233258", style: TextStyle(color: Colors.white))
                  ],
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30,),
                  onTap: ()async{
                    const url = 'tel:4612233258';
                    if(await canLaunch(url)) {
                      await launch(url);
                  }else{
                    print('No se pudo llamar');
                  }
                  },
                ),
                ),
              ),
              
             
     



               Card( //investigar como hacer un email, y otro para tomar fotos
                elevation: 8.0,
                margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                child: Container(
                  decoration: BoxDecoration(color: Color.fromRGBO(64, 74, 96, .9)
                  ),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  leading: Container(
                    padding: EdgeInsets.only(right: 12.0),
                  decoration: BoxDecoration(
                    border: Border(right: BorderSide(width: 1.0, color: Colors.white))
                    ),
                    child: Icon(Icons.camera, color: Colors.white) 
                    ),

                  title: Text('Tomar foto', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)
                  ),
                 
                  
                  subtitle: Row(
                    children: <Widget>[
                    Icon(Icons.touch_app, color: Colors.yellowAccent),
                    Text("Tomate una Selfie", style: TextStyle(color: Colors.white))
                  ],
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30,),
                  
                  onTap: opencam,
                  
                ),
                ),
              ),

              Card( // aqui esta el email
                elevation: 8.0,
                margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                child: Container(
                  decoration: BoxDecoration(color: Color.fromRGBO(64, 74, 96, .9)
                  ),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  leading: Container(
                    padding: EdgeInsets.only(right: 12.0),
                  decoration: BoxDecoration(
                    border: Border(right: BorderSide(width: 1.0, color: Colors.white))
                    ),
                    child: Icon(Icons.email, color: Colors.white) 
                    ),

                  title: Text('Enviar Email', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)
                  ),
                 
                  
                  subtitle: Row(
                    children: <Widget>[
                    Icon(Icons.touch_app, color: Colors.yellowAccent),
                    Text("jose-ivan-890@hotmail.com", style: TextStyle(color: Colors.white))
                  ],
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30,),
                  
                  onTap: () async{
                    const url ='mailto: jose-ivan-890@hotmail.com?subject=News&body=aqui va la descripcion';
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    print("no se pudo :(");
                  }
                  }
                  ),
                  
                ),
                ),
              

              ];
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(88, 66, 86,.5),
        appBar: AppBar(
          title: Text('Acciones implicitas'),
        ),
          body: ListView(
            children: children2,
          ),
      ),
    );
  }

  

}

