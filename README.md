# README
Este readme servira para la guia del funcionamiento de las apis creadas con en este proyecto,\
tanto para la ejecucion de los test unitarios incluidos en el mismo

### Instalacion
1.- Hacer un pull al repositorio: https://github.com/jesustr20/dry_beans\
2.- Verificar que su version de ruby sea la misma que la del proyecto: 3.1.2 (local)\
3.- Correr bundle para la instalacion de dependencias\
    que se encuentran dentro del archivo Gemfile: bundle install

### Para instalar el Proyecto
1.- Tener Postgresql instalado en su pc.
2.- Para la ejecucion del esquema en la Db postgresql\
    correremos los siguientes comandos:

  * rails db:create\
  * rails db:migrate\

### Prueba de Test Unitarios
1.- En este caso implemente dos pruebas unitarias tanto en el modelo "rutas" y\
    en el modelo "Viajes".
2.- Para correr los test en el modelo Rutas y Viajes correr los siguientes comandos:\

  * rspec spec/models/route_planner_spec.rb
  * rspec spec/models/journey_spec.rb

3.- Una vez creada la db y corrida las migraciones, haber probado los test unitarios (basico)\
    procederemos a levantar el proyecto y poder hacer uso de sus Apis.\

### Levantar Proyecto y hacer uso de sus APis.
1.- Correremos el proyecto: rails s
2.- Para acceder a sus apis tendremos 4 apis distintas

* Para crear una Ruta usaremos la siguiente Api.
 
  Post: http://127.0.0.1:3000/api/v1/route_planners

  valores Json:\
    {\
      "route_name":\ "nombre_ruta"\
    }
