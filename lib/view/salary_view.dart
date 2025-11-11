import 'package:flutter/material.dart';
import '../controller/salary_controller.dart';
import '../theme/tema_formularios.dart';
import '../theme/tema_botones.dart';

class SalaryView extends StatelessWidget {
  final SalaryController _controller = SalaryController();
  final TextEditingController _antiquityController = TextEditingController();
  final TextEditingController _salaryController = TextEditingController();

  void _calculateAndNavigate(BuildContext context) {
    FocusScope.of(context).unfocus();

    String validationResult = _controller.calcularNuevoSalario(
      _antiquityController.text,
      _salaryController.text,
    );

    if (validationResult == "Calculo Exitoso") {
      Navigator.pushNamed(
        context,
        '/results',
        arguments: _controller.resultMessage,
      );
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(validationResult)));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ejercicio 2: Reajuste de Sueldos')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text(
              'Ingrese Antigüedad y Sueldo Actual:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 30),

            Theme(
              data: Theme.of(
                context,
              ).copyWith(inputDecorationTheme: TemaFormularios.camposTexto),
              child: TextField(
                controller: _antiquityController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Antiguedad (Años)',
                ),
              ),
            ),
            const SizedBox(height: 25),

            Theme(
              data: Theme.of(
                context,
              ).copyWith(inputDecorationTheme: TemaFormularios.camposTexto),
              child: TextField(
                controller: _salaryController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Sueldo Actual (\$)',
                ),
              ),
            ),
            const SizedBox(height: 40),

            Theme(
              data: Theme.of(
                context,
              ).copyWith(elevatedButtonTheme: TemaBotones.botonPrincipal),
              child: ElevatedButton(
                onPressed: () => _calculateAndNavigate(context),
                child: const Text('Calcular Reajuste'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
