import os, requests, json

def get_cached_json(fname, url):
    result = ""
    if os.path.exists(fname):
        with open(fname, "r") as f:
            try:
                result = json.load(f)
            except:
                print("?")
    if result == "":
        response = requests.get(url)
        result = response.json()
        with open(fname, "w") as f:
            json.dump(result, f, indent=4)
    return result



fname = "cache_json_response.json"
url = "https://ifconfig.co/json"
get_cached_json(fname, url)