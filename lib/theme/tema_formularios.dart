import 'package:flutter/material.dart';
import 'esquema_color.dart';

class TemaFormularios {
  static final camposTexto = InputDecorationTheme(

    filled: true,
    fillColor: Colors.white,
    labelStyle: TextStyle(color: Colors.black26),
    prefixIconColor: EsquemaColor.primary,
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Colors.black26)
    ),

    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: EsquemaColor.primary, width: 2)
    ),

  );
}