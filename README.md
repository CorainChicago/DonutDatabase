##[Donut Database](http://donutdatabase.herokuapp.com/)

This is a Rails app started to promote the evaluation of donuts in Chicago, then I realized that was being selfish.  Everyone deserves the best donut.

curl '-H token: 349ab29a-xtab-423b-a5hc-5623bc39b8c8"=b/Ow2LotEIDWacnPquLMqzuhgiRyaBS9ARxhMXNvLKk/QOT97cFBqXyoOdD5Uq3XcHcwJqbZXZxLzMomhWFaFQ= options=token@user.com' http://localhost:3000/api/v1/donuts


##Login Example

curl --data "email=token@user.com&password=password" http://localhost:3000/api/v1/sessions

Returns JSON for the User

##

curl --data "email=token@user.com&token=b/Ow2LotEIDWacnPquLMqzuhgiRyaBS9ARxhMXNvLKk/QOT97cFBqXyoOdD5Uq3XcHcwJqbZXZxLzMomhWFaFQ==" http://localhost:3000/api/v1/donuts


curl -X GET 'http://localhost:3000/api/v1/donuts?email=token@user.com&token=b/Ow2LotEIDWacnPquLMqzuhgiRyaBS9ARxhMXNvLKk/QOT97cFBqXyoOdD5Uq3XcHcwJqbZXZxLzMomhWFaFQ=='
