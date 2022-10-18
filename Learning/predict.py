from copyreg import pickle
import os, pickle

from keras.models import load_model
# from keras.preprocessing.text import Tokenizer
# from keras.models import Model

sep = os.sep

data_folder = "Learning/Data"
model_folder = "Learning/Final_Model"
EMBEDDING_DIM = 300

def predict(sentence):
    if not os.path.exists(model_folder + sep + "tokenizer.pkl"):
        print('Can not found tokenizer model')
        return -1

    if not os.path.exists(model_folder + sep + "predict_model.h5"):
        print('Can not found CNN model')
        return -1
    
    print("Tokenizer model found, load it!")
    file = open(model_folder + sep + "tokenizer.pkl", 'rb')
    tokenizer, word_index = pickle.load(file)
    file.close()

    print("CNN model found, load it!")
    model = load_model(model_folder + sep + "predict_model.h5")

    # predict
    arr = tokenizer.texts_to_sequences([sentence])
    print("\nĐộ dài câu: ", len(arr[0]))
    if len(arr[0]) == 0:
        print('Warning! Every words in this sentence couldn\'t found in current dictionary')
    arr[0] = [0] * (model.layers[0].output_shape[0][1]-len(arr[0])) + arr[0]
    return model.predict(arr).argmax()

if __name__ == '__main__':
    print(predict('đang nằm cùng bồ'))



