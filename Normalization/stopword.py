import re
def getStopword(content1):
    stopwords = []
    stopwords1 = []
    content = open('stopwords.txt', 'r', encoding='UTF-8').read()
    res = content.split("\n")
    res1 = content1.split()
    res2 = []

    for i, word in enumerate(res1):
        if i < len(res1) -1:
            res2.append(res1[i] + ' ' +res1[i+1])

    if len(list(set(res) & set(res1))) < 1:
        return ' '
    else:
        stopwords.append(list(set(res) & set(res1)))

    if len(list(set(res) & set(res2))) < 1:
        return ' '
    else:
        stopwords1.append(list(set(res) & set(res2)))

    for word in stopwords1[0]:
        if word in content1:
            content1 = content1.replace(word, '')

    for word in stopwords[0]:
        if word in content1:
            content1 = content1.replace(word, '')
    content1 = re.sub(r"\s+", ' ', content1).strip()
    
    return content1

if __name__ == '__main__':

    print(getStopword('có thể có vẻ rất cái gì đó stop hay quá trời luôn'))



# print(len(stopwords))
