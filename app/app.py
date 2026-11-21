
import os
from flask import Flask

app = Flask(__name__)

APP_MESSAGE = os.getenv(
    "APP_MESSAGE",
    "Bienvenue dans mon application Docker !"
)

@app.route("/")
def home():
    return f"""
    <h1>{APP_MESSAGE}</h1>
    <p>Application Flask conteneurisee avec Docker.</p>
    <p>Version : 1.0.1</p>
    """

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
