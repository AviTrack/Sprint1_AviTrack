// Definições dos pinos e variáveis
const int PINO_SENSOR_TEMPERATURA = A0;  // Pino conectado ao sensor LM35
float temperaturaCelsius;               // Variável para armazenar a temperatura em Celsius

// Função de inicialização
void setup() {
  Serial.begin(9600);  // Inicializa a comunicação serial a 9600 bps
}

// Função principal de execução contínua
void loop() {
  // Lê o valor analógico do sensor, converte para temperatura em Celsius
  int valorLeitura = analogRead(PINO_SENSOR_TEMPERATURA);
  // converte o valor lido 
  temperaturaCelsius = ((valorLeitura * 5.0 / 1023.0) / 0.01) ;
  
  //nome da label no serial ploter
  Serial.print("TempMaxima:");
  //valor da label no serial ploter
  Serial.print(23);
  Serial.print(" ");
  //nome da label no serial ploter
  Serial.print("Temperatura:");
  //valor da label no serial ploter
  Serial.print(temperaturaCelsius);
  Serial.print(" ");
  //nome da label no serial ploter
  Serial.print("TempMinima:");
  //valor da label no serial ploter
  Serial.println(16);
  // Aguarda 2 segundos antes da próxima leitura
  delay(2000);
}
