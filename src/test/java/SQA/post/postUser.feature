Feature: testo metodo post de jsonplaceholder

  Background:
    * url `https://jsonplaceholder.typicode.com`

  Scenario: test satisfactory
    * def Publicaciones = 'posts'
    * def numeroPublicaciones = 1

    * def respuestaSolicitud = read (`classpath:SQA/post/response/respuesta_informacion.json`)

    Given path Publicaciones, numeroPublicaciones
    When method GET
    Then status 200
    * print response
    And match respuestaSolicitud   == response