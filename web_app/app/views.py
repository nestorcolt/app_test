from app import app
from flask import send_from_directory

@app.route("/")
def index():
    return send_from_directory("static", 'landing.html')

@app.route("/helloworld", methods=["GET"])
def hello_world_endpoint():
    return {"hello": "world"}
