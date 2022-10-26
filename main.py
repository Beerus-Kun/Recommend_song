# from crypt import methods
from flask import Flask, render_template, request
from Model import connect
from Learning import predict
from Normalization import chuanhoachuTV, stopword, test
import os, datetime

app = Flask(__name__)
model_folder = "Learning/Model/Final_Model/"
current_h5 = model_folder + 'predict_model.h5'
current_dict = model_folder + "tokenizer.pkl"

@app.route("/", methods = ['POST', 'GET'])
def home():
    status = 2

    popular_musics = connect.select_polular_music()[:9]
    if request.method == 'GET':
        return render_template("index.html", status = 1, popular_musics=popular_musics)
    if request.method == 'POST':
        res = connect.select_name_music(request.form['search'])
        if len(res) < 1:
            correct_sentence = chuanhoachuTV.chuan_hoa_dau_cau_tieng_viet(request.form['search'])
            correct_sentence = stopword.getStopword(correct_sentence)
            flag = predict.predict(correct_sentence, current_h5, current_dict)
            if flag == -1 or flag ==-2:
                res = False
                status = -1
            else:
                res = connect.select_music(flag)[:9]

        return render_template("index.html", search=request.form['search'], music_list = res, status = status, popular_musics=popular_musics)

@app.route("/form", methods = ['POST', 'GET'])
def form():
    if request.method == 'GET':
        return render_template("form.html")
    if request.method == 'POST':
        print(request.form)
        print(request.files)

        now = datetime.datetime.now()
        
        image_file = request.files['image_music']
        image_name = now.strftime("%d-%m-%Y-%H-%M.")+image_file.filename.split('.')[-1]

        image_folder = 'static/images/' + image_name
        image_file.save(image_folder)

        connect.insert_music(request.form['name_music'], request.form['name_singer'], request.form['name_author'], request.form['url'], request.form['flag'], image_name, request.form['rated'])
    
    return render_template("form.html")

@app.route("/insert")
def insert():
    # connect.insert_music('bai hat', 'ca si', 'tac gia', 'url', 2)
    return render_template("form.html")

@app.route("/setup", methods = ['POST', 'GET'])
def setup():
    if request.method == 'POST':
        if 'file_h5' not in request.files or 'file_dict' not in request.files:
            print('Ko co file h5')
        file_h5 = request.files['file_h5']
        file_dict = request.files['file_dict']
        # If the user does not select a file, the browser submits an
        # empty file without a filename.
        if file_h5.filename == '' or file_dict.filename== '':
            print('Ko co du file')
        else:
            print('Co file h5')
            now = datetime.datetime.now()
            
            h5_name = now.strftime("%d-%m-%Y-%H-%M_h5_file.")+file_h5.filename.split('.')[-1]
            dict_name = now.strftime("%d-%m-%Y-%H-%M_dict_file.")+file_dict.filename.split('.')[-1]

            file_h5.save(model_folder + h5_name)
            file_dict.save(model_folder + dict_name)

            global current_h5 
            current_h5 = model_folder + h5_name
            global current_dict 
            current_dict= model_folder + dict_name
    return render_template("form_setup_AI.html")

if __name__ == "__main__":
    app.run(debug=True)
    # https://www.freecodecamp.org/news/how-to-build-a-web-application-using-flask-and-deploy-it-to-the-cloud-3551c985e492/