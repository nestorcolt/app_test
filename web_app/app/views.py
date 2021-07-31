from app import app

INDEX_HEADER_CONTENT = "CMPGroup DevOps Application Test - Nestor Colt"

@app.route("/")
def index():
    return f"<h1>{INDEX_HEADER_CONTENT}</h1>"


@app.route("/helloworld", methods=["GET"])
def hello_world_endpoint():
    return {"hello": "world"}
