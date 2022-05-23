@isTest
public class TemperatureConverterTest {
    //Quente
    @isTest static void testWarmTemp() {
        Decimal celsius = TemperatureConverter.FahrenheitToCelsius(70);
        system.assertEquals(21.11, celsius);
    }
    //Congelamento
    @isTest static void testeFreezingPoint() {
        Decimal celsius = TemperatureConverter.FahrenheitToCelsius(32);
        system.assertEquals(0, celsius);
    }
    //Ebulição
    @isTest static void testBoilingPoint() {
        Decimal celsius = TemperatureConverter.FahrenheitToCelsius(212);        
        System.assertEquals(100,celsius,'Boiling point temperature is not expected.');
    } 
    //Temperatura Negativa
    @isTest static void testNegativeTemp() {
        Decimal celsius = TemperatureConverter.FahrenheitToCelsius(-10);
        System.assertEquals(-23.33,celsius);
    }
}