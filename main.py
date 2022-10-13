# from crypt import methods
from flask import Flask, render_template, request
from Model import connect

app = Flask(__name__)

@app.route("/", methods = ['POST', 'GET'])
def home():
    if request.method == 'GET':
        return render_template("index.html")
    if request.method == 'POST':
        print(request.form)
        return render_template("index.html", result=request.form)

@app.route("/form")
def form():
    return render_template("form.html")

@app.route("/insert")
def insert():
    connect.insert_music('bai hat', 'ca si', 'tac gia', 'url', 2)
    return render_template("form.html")
# render_template(
#     'test.html',name=name)</string:name>

if __name__ == "__main__":
    app.run(debug=True)
    # https://www.freecodecamp.org/news/how-to-build-a-web-application-using-flask-and-deploy-it-to-the-cloud-3551c985e492/