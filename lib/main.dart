import 'package:criollomateo_examen1/theme/tema_general.dart';
import 'package:criollomateo_examen1/view/salary_result.dart';
import 'package:criollomateo_examen1/view/salary_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calcular Sueldo',

      //ejecutamos rutas
      initialRoute: '/',
      routes: {
        '/':(context)=>SalaryView(),
        '/results' : (context)=>SalaryResult()
      },
      theme: TemaGeneral.claro,
      
    );
  }
}
