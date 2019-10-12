# Comunidad UNAB

### Participantes
+ Bastian Simpertigue

### Link heroku
[comunidad-unab](https://comunidad-unab.herokuapp.com/)

### Instrucciones

```
    git clone https://github.com/yieniggu/ComunidadUNAB

    cd ComunidadUNAB

    sudo docker-compose build

    sudo docker-compose run web rake db:create db:migrate db:seed

    sudo docker-compose run web rake assets:precompile

    docker-compose up
```

### Usuarios

##### Profesores
+ User: f.marshall@uandresbello.edu - pass: passProfe 
+ User: s.troncoso@uandresbello.edu - pass: passAyudante

##### Alumnos
+ User: b.simpercifu@uandresbello.edu - pass: passBastian
+ User: j.retamales@uandresbello.edu - pass: passJoaquin