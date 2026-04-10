from flask import Flask,jsonify
pag = Flask(__name__)
@pag.route('/')
def home():
    return jsonify({"message": "¡Hola flask en Docker!"})
if __name__ == '__main__':
    pag.run(host="0.0.0.0", port=5001)