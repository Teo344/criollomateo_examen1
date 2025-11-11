import '../model/salary_model.dart';

class SalaryController {
  final SalaryModel _model = SalaryModel();

  String _mensajeResultante = '';
  double _nuevoSalario = 0.0;
  double _reajusteRate = 0.0;

  String get resultMessage => _mensajeResultante;
  double get newSalary => _nuevoSalario;
  double get reajusteRate => _reajusteRate;

  String calcularNuevoSalario(String antiguedadText , String salarioActualText){
    int? antiguedad = int.tryParse(antiguedadText);
    double? salarioActual = double.tryParse(salarioActualText);

    if(antiguedad ==null || salarioActual == null){
      return "Error, Porfavor ingrese valores numericos validos";
    }

    if(antiguedad<0){
      return "Error, la antiguedad no puede ser negativa";
    }

    if(salarioActual<=0){
      return "Error: El sueldo actual debe ser un valor positivo.";
    }

    _reajusteRate = _model.calcularReajuste(antiguedad, salarioActual);
    _nuevoSalario = _model.calcularNuevoSalario(salarioActual, _reajusteRate);

    final porcentaje = (_reajusteRate * 100).toStringAsFixed(0);
    final nuevoSalarioTotal = _nuevoSalario.toStringAsFixed(2);

    _mensajeResultante= "Se aplicó un ${porcentaje}% de reajuste. Su nuevo sueldo es: \$$nuevoSalarioTotal.";
    return "Cálculo Exitoso";
  }
}