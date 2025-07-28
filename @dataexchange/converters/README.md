[Display curl output in readable JSON format in Unix shell script](https://stackoverflow.com/questions/27238411/display-curl-output-in-readable-json-format-in-unix-shell-script)

## NodeJS

npm i -g json
echo '{"foo": "lorem", "bar": "ipsum"}' | json

too complex
echo '{"foo": "lorem", "bar": "ipsum"}' |  node <<< "var o = $(cat); console.log(JSON.stringify(o, null, 4));"

## Python

almost available everywhere, but no color coding
echo '{"foo": "lorem", "bar": "ipsum"}' | python -mjson.tool

## Shell

color coding and versatile, but needs to install jq
echo '{"foo": "lorem", "bar": "ipsum"}' | jq

available in Ubuntu 16.04 LTS
echo '{"foo": "lorem", "bar": "ipsum"}' | json_pp

## Ruby

gem install jsonpretty
echo '{"foo": "lorem", "bar": "ipsum"}' | jsonpretty
