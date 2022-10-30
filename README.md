## **Đề tài (Topic)**: Khuyến nghị bài hát theo cảm xúc (Recommend songs by feeling)

### **Mô tả đề tài (Description of the topic)**:
- Xây dựng mô hình web MVC bằng flask, kết nối với cơ sở dữ liệu SQL Server và kết nối với phần View bằng ngôn ngữ HTML.
- Trang web qua các giai đoạn sau khi người dùng tìm kiếm:
  + Hệ thống nhận nội dụng từ người dùng.
  + Hệ thống qua bước kiểm tra trong hệ cơ sở dữ liệu để tìm ra những bài hát có tiêu đề giống với nội dung đó.
  + **_Hệ thống trả về danh sách bài hát đã tìm được._**
  + Nếu không tìm được, câu được người dùng nhập đi qua bước chuẩn hóa tiếng Việt và loại bỏ những từ stopword.
  + Đoạn văn bản đó được chuyển thành vector và qua mô hình CNN để được dự đoán.
  + **_Hệ thống trả về danh sách bài hát theo chủ đề được dự đoán._**
- Thêm bài hát mới.
- Thay đổi tri thức cho hệ thống.

- Build MVC web model with flask, connect to SQL Server database and connect to View in HTML language.
- The website go through the following stages when users search:
   + The system receive content from the user.
   + The system check in the database to find songs with the same title as that content.
   + **_The system return the list of songs found._**
   + If not found, the sentence entered by the user go through the Vietnamese standardization step and remove stopwords.
   + The text converted to vector and through the CNN model to be predicted.
   + **_The system return a list of songs according to the predicted category._**
- Add new songs.
- Change knowledge for the system.

### **Cài đặt hệ thống (Install system)**:

**B1: Vào thư mục bạn muốn cài đặt và mở command prompt (Go to the folder you want to install and open the command prompt).**\
**B2: Tạo git và tải code về (Create git and download the code)**
- git init
- git pull https://github.com/Beerus-Kun/Recommend_song 

**B3: Tạo môi trường python trên thư mục (Create python environment on directory)**
- python -m venv project_env
- project_env\Scripts\activate.bat

**B4: Cài đặt thư viện (Install the libraries)**
- pip install -r requirements.txt

**B5: Tạo bảng trên SQL Server bằng [script](script.sql) (Create tables on SQL Server with [script](script.sql))**\
**B6: Thay đổi thông tin server, database, username, password trong file [connect](Model/connect.py) (Change server, database, username, password informations in file [connect](Model/connect.py))**\
**B7: Chạy chương trình (Run the program)**
- python main.py