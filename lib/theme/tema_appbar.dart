import 'package:flutter/material.dart';
import 'esquema_color.dart';


class TemaAppbar {
  static const AppBarTheme estilo= AppBarTheme(
    backgroundColor: EsquemaColor.accent,
    foregroundColor: EsquemaColor.textWhite,
    centerTitle: true,
    elevation: 3,
    titleTextStyle: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
      color: EsquemaColor.textWhite
    ),
  );
}