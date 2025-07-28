# https://pypi.org/project/json-modify/

from json_modify import apply_actions

source = {
    "spec": {
        "name": "test",
        "metadata": [
            {"name": "test1", "value": "test1"},
            {"name": "test2", "value": "test2"}
        ],
        "values": {"value1": 10, "value2": 20}
    }
}

actions = [
    {"action": "add",
     "path": "spec/values",
     "value": {"value3": 30, "value4": 40}}
]

result = apply_actions(source, actions)

print(result)