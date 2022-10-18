# Portfolio-backend
Proyecto final backend para Argentina Programa #YoProgramo. Desarrollado con Java JDK 11 y MySQL

# Descripción
La API permite registrar un usuario, iniciar sesión con el mismo y agregar y editar informacion personal como estudios , experiencia laboral , proyectos, etc con el fín de compartir su perfil laboral para buscar empleo.


# Uso
Para correr la aplicación debe descargar el repository de forma local , esto le creara la carpeta `Portfolio-backend` con el proyecto dentro. Antes de lanzarla realize los siguiente pasos:

1. En application.properties defina las siguientes propiedades:

- `spring.datasource.username:` //aquí ingrese el usuario de su gestor de base de datos
- `spring.datasource.password:` //aquí ingrese el password de su gestor de base de datos
 
2. Para ejecutar la aplicación abra la ventana de comandos de windows e ingrese :
```
cd ruta
```
donde ruta es la la direccion completa hacia la carpeta `Portfolio-backend`,
Ejemplo:
```
cd C:\Users\Gustavo_Hernandez\Desktop\Portfolio-backend
```
3. A continuación se debe instalar la aplicación ingresando en la consola de comandos lo siguiente:
```
.\mvnw.cmd clean install
```
4. Al finalizar la instalación anterior ingrese el siguiente comando para posicionarse dentro de la carpeta target:
```
cd target
```
5. Finalmente ejecute la aplicación con el comando:
```
java -jar portfolio-0.0.1-SNAPSHOT.jar
```

6. Para probar la aplicación puede utilizar postman y acceder al end-point http://localhost:8080/v1/portfolios/user/gustavo92
Esto deberia traer la informacion del usuario cargado por defecto

Puede registrar un usuario nuevo en la url http://localhost:8080/v1/auth/register enviando un json con el siguiente formato:

```
"nickname":"usuario99",
"email":"usuario99@email.com",
"password":"12345678"
```

