class SalaryModel {
  static const double sueldoDiez = 300000.0;
  static const double sueldoVeinte = 500000.0;
  static const int antiguedadDiez = 10;
  static const int antiguedadVeinte = 20;

  double calcularReajuste(int antiguedad, double salarioActual) {
    double reajusteRate = 0.0;

    if (antiguedad >= antiguedadVeinte) {
      reajusteRate = 0.15;
    } 
    // Regla: Más de 10 años y hasta 20 años (11 a 20 años)
    else if (antiguedad > antiguedadDiez && antiguedad < antiguedadVeinte) {
      if (salarioActual <= sueldoDiez) {
        // Sueldo actual hasta $300.000: 14% de reajuste [cite: 7]
        reajusteRate = 0.14; 
      } else if (salarioActual > sueldoDiez && salarioActual <= sueldoVeinte) {
        // Sueldo actual más de $300.000 y hasta $500.000: 12% de reajuste [cite: 7]
        reajusteRate = 0.12; 
      } else { // salarioActual > 500K
        // Sueldo actual más de $500.000: 10% de reajuste [cite: 7]
        reajusteRate = 0.10; 
      }
    } 
    // Regla: Hasta 10 años de antigüedad (0 a 10 años)
    else if (antiguedad <= antiguedadDiez) {
      if (salarioActual <= sueldoDiez) {
        // Sueldo actual hasta $300.000: 12% de reajuste [cite: 7]
        reajusteRate = 0.12; 
      } else if (salarioActual > sueldoDiez && salarioActual <= sueldoVeinte) {
        // Sueldo actual más de $300.000 y hasta $500.000: 10% de reajuste [cite: 7]
        reajusteRate = 0.10; 
      } else { // salarioActual > 500K
        // Sueldo actual superior a $500.000: 8% de reajuste [cite: 7]
        reajusteRate = 0.08; 
      }
    }
    
    return reajusteRate;
  }

  double calcularNuevoSalario(double salarioActual, double reajusteRate) {
    // Calcula el nuevo sueldo = sueldo + (sueldo * porcentaje) [cite: 11]
    return salarioActual * (1 + reajusteRate);
  }
}