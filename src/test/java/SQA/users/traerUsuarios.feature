Feature: Testeo a los metodos post de jsonplaceholder
  
  Background: 
    * url 'https://jsonplaceholder.typicode.com'
    
    Scenario: Traer informacion del usuario de forma satisfactoria

      * def Path = 'users'
      * def usuario = 1

      * def postUserFeature = call read (`classpath:SQA/post/postUser.feature`)
      * def respuestaSolicitud = read (`classpath:SQA/post/response/publicacionesUsuario1.json`)

      Given path Path,usuario
      When method Get
      Then status 200
      And match respuestaSolicitud == response