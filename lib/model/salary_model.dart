class SalaryModel {
  static const double sueldoDiez = 300000.0;
  static const double sueldoVeinte = 500000.0;
  static const int antiguedadDiez = 10;
  static const int antiguedadVeinte = 20;

  double calcularReajuste(int antiguedad, double salarioActual) {
    double reajusteRate = 0.0;

  //mas de 20 anios
    if (antiguedad >= antiguedadVeinte) {
      reajusteRate = 0.15;
    } 
    //entre 10 y 20
    else if (antiguedad > antiguedadDiez && antiguedad < antiguedadVeinte) {
      if (salarioActual <= sueldoDiez) {
        reajusteRate = 0.14; 
      } else if (salarioActual > sueldoDiez && salarioActual <= sueldoVeinte) {
        reajusteRate = 0.12; 
      } else { 
      
        reajusteRate = 0.10; 
      }
    } 
    //menos de 10
    else if (antiguedad <= antiguedadDiez) {
      if (salarioActual <= sueldoDiez) {
        
        reajusteRate = 0.12; 
      } else if (salarioActual > sueldoDiez && salarioActual <= sueldoVeinte) {
        
        reajusteRate = 0.10; 
      } else {
        
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