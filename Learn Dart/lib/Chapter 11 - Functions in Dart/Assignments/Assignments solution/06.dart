// Write a function convertTemperature that converts a temperature from Celsius to Fahrenheit. The function should take the temperature in Celsius as a parameter and return the corresponding temperature in Fahrenheit.

void main(List<String> args) {
  // Example usage:
  double celsiusTemperature = 25.0;
  double fahrenheitTemperature = convertTemperature(celsiusTemperature);

  // Print the result
  print(
      '$celsiusTemperature degrees Celsius is $fahrenheitTemperature degrees Fahrenheit');
}

double convertTemperature(double celsiusTemperature) {
  // Formula to convert Celsius to Fahrenheit: (Celsius * 9/5) + 32
  double fahrenheitTemperature = (celsiusTemperature * 9 / 5) + 32;

  // Return the result
  return fahrenheitTemperature;
}
