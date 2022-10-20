# from crypt import methods
from flask import Flask, render_template, request
from Model import connect
from Learning import predict

app = Flask(__name__)

@app.route("/", methods = ['POST', 'GET'])
def home():
    if request.method == 'GET':
        return render_template("index1.html")
    if request.method == 'POST':
        flag = predict.predict(request.form['search'])
        res = connect.select_music(flag)
        return render_template("index.html", search=request.form['search'], music_list = res)

@app.route("/form")
def form():
    # print(predict.predict('một câu gì đó'))
    return render_template("form.html")

@app.route("/insert")
def insert():
    connect.insert_music('bai hat', 'ca si', 'tac gia', 'url', 2)
    return render_template("form.html")
# render_template(
#     'test.html',name=name)</string:name>

@app.route("/setup")
def setup():
    return render_template("form_setup_AI.html")

@app.route("/search")
def list_music():
    res = connect.select_music()
    print(res)
    return "connect.select_music()"

if __name__ == "__main__":
    app.run(debug=True)
    # https://www.freecodecamp.org/news/how-to-build-a-web-application-using-flask-and-deploy-it-to-the-cloud-3551c985e492/