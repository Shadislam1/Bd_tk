import 'package:currency_converter/currency_comverter_material_page.dart';
import 'package:currency_converter/currrency_comverter_cupertino_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

//types of widgets
//statelesswidgets
//statefullWidgets

//state

//Cupertiono Design
//Meterial Design


class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return const MaterialApp(

      home: CurrencyConverterMaterialPage(),

    );
  }

}


class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
     return const CupertinoApp(

      home: CurrencyConverterCupertionoPage(),
     );
  }
}