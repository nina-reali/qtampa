int  pinoSensor = 5;
int valorLido = 0; 
float temperatura = 0; 

void setup() { // // Função que será executada uma  

Serial.begin(9600); 

Serial.println("temperatura"); 
}  

  
void loop() { // Função que será executada continuamente 

valorLido = analogRead(pinoSensor); 

temperatura = (valorLido * 0.00488); 

temperatura = temperatura * 100; 

Serial.println(temperatura);  

  delay(1000); 

} 
