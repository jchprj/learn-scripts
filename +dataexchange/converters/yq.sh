# https://stackoverflow.com/questions/53315791/how-to-convert-a-json-response-into-yaml-in-bash
# https://github.com/kislyuk/yq
# pip install yq

# --yaml-output/-y: convert it back into YAML
# --yaml-roundtrip/-Y: preserve YAML tags and styles by representing them as extra items in their enclosing mappings and sequences while in JSON

echo '{"foo": 0}' | yq -y               # foo: 0
echo '{"foo": "0"}' | yq .foo           # "0"
echo '{"foo": "0"}' | yq -r .foo        # 0

echo 'foo: 0' | yq
# {
#   "foo": 0
# }
echo 'foo: "0"' | yq .foo               # "0"
echo 'foo: "0"' | yq -r .foo            # 0
