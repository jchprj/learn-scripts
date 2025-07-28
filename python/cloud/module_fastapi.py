# https://code.visualstudio.com/docs/python/tutorial-fastapi

from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def root():
    return {"message": "Hello World"}