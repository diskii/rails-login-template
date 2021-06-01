# Rails login template

#### Rails 5.2.6
#### ruby '2.5.9'


## First time running the application
 
```
$ docker-compose build
$ docker-compose up -d 
$ docker-compose exec web bash
# Once you are in the docker bash please run:
$ rails db:create && rails db:migrate && rails db:seed
# run on browser http://localhost:3000

```
### To check emails: 
##### http://localhost:3000/letter_opener

