Feature: Prueba de conexion de BD y login
Scenario: Conexion BD Incorrecta
Given Probar conexion BD ""
Scenario: Conexion BD Correcta
Given Probar conexion BD "jdbc:mysql://localhost:3306/integridad"

Scenario: Caso 1: Login sin datos
Given abrir navegador
When ingresa username "" y password ""
Then inicia sesion

Scenario: Caso 2: Login con datos incorrectos
Given abrir navegador
When ingresa username "fgh" y password "ed"
Then inicia sesion

Scenario: Caso 3: Login con datos correctos
Given abrir navegador
When ingresa username "teddy" y password "xxx"
Then inicia sesion


