# ♻️Digital-Marketing-Analysis

## ✏️Table of contents:
[1. Project Name](#1-project-name)  
[2. Summary](#2-summary)  
[3. Data source](#3-data-source)  
[4. Tools and analysis method](#4-tools-and-analysis-method)  
[5. Implementation](#5-implementation)  
[6. Dashboard](#6-dashboard)  
[7. Results and Findings](#7-results-and-findings)  
[8. Conclusion](#8-conclusion)  
[9. Recommendations](#9-recommendations)

## 1. Project Name  
### 📍Phân tích kết quả các chiến dịch Marketing sau 1 tháng hoạt động

## 2. Summary
Gia tăng lợi nhuận, tối ưu chi phi quảng cáo bằng việc phân tích kết quả của toàn bộ các chiến dịch đã chạy trong 1 tháng

## 3. Data source
Đây là tập dữ liệu chứa kết quả của toàn bộ các chiến dịch đã chạy trong tháng 2, bao gồm các chỉ số chính về chi phí, doanh thu, lượt tiếp cận,... Nguồn dataset: https://www.kaggle.com/datasets/sinderpreet/analyze-the-marketing-spending/data

Chú thích ý nghĩa các trường dữ liệu:
- id: Mã định danh duy nhất cho mỗi mục nhập
- c_date: Ngày diễn ra chiến dịch
- campaign_name: Tên của chiến dịch
- category: Thể loại của chiến dịch (ví dụ: xã hội, tìm kiếm, người có ảnh hưởng, phương tiện truyền thông)
- campaign_id: Mã định danh duy nhất cho mỗi chiến dịch
- impressions: Số lần hiển thị được tạo ra bởi chiến dịch
- mark_spent: Số tiền chi cho chiến dịch
- clicks: Số lần nhấp chuột nhận được
- leads: Số lượng khách hàng tiềm năng được tạo ra
- orders: Số lượng đơn hàng đã thực hiện
- revenue: Doanh thu được tạo ra từ chiến dịch
  
🔗🔗🔗Các trường dữ liệu được tạo thêm:
- ROMI: lợi nhuận thu được so với số tiền chi cho quảng cáo ((revenue - mark_spent) / mark_spent)
- CTR: Tỷ lệ nhấp chuột so với số lần hiển thị (clicks / impressions)
- CPC: Chi phí cho mỗi lần nhấp chuột vào quảng cáo (mark_spent / clicks)
- CPL: Chi phí cho mỗi khách hàng tiềm năng (mark_spent /leads)
- CAC: Chi phí để thu hút một khách hàng mới (mark_spent / orders)
- AOV: Giá trị trung bình của mỗi đơn hàng được thực hiện (revenue / orders)
- CR1: Tỷ lệ chuyển đổi 1 (leads / clicks)*100
- CR2: Tỷ lệ chuyển đổi 2 (orders / leads)*100
- GP: Lợi nhuận (revenue - mark_spent)
- weekname: Thứ trong tuần lấy từ c_date

## 4. Tools and analysis method  
- SQL Server
  * Sử dụng DQL (Data Query Language): select
  * Sử dụng DDL (Data Definition Language): create, alter
  * Sử dụng DML (Data Manipulation Language): update
- Power BI
  * Sử dụng các biểu đồ để trực quan hóa dữ liệu

## 5. Implementation
- Tạo thêm các chỉ số cần thiết: Sử dụng sql để tính toán và tạo thêm các trường dữ liệu cần thiết phục vụ cho phân tích.
- Phân tích: Phân tích kết quả các chiến dịch qua các góc nhìn về chi phí tỉ lệ chuyển đổi, hiệu suất, thời gian.
- Trực quan hóa dữ liệu: Sử dụng các chỉ số vừa tạo thêm và các chỉ số có sẵn để xây dựng các biểu đồ liên quan đến các chiều phân tích. 
 
## 6. Dashboard
![Screenshot 2024-10-10 035126](https://github.com/user-attachments/assets/78342d32-d89d-43a9-b739-a19ad770a8de)

![Screenshot 2024-10-10 035140](https://github.com/user-attachments/assets/8fc11256-be56-4334-b436-3955da166fa7)

![Screenshot 2024-10-10 035153](https://github.com/user-attachments/assets/e5ff6c0f-26db-4bb9-8873-bfb6502e7a39)

![Screenshot 2024-10-10 035206](https://github.com/user-attachments/assets/51eaf939-a40d-4c1a-9fa3-cc580adb62d1)

## 7. Results and Findings
Tổng quan: 
- Tổng kết các chiến dịch trong 1 tháng tiêu tốn hơn 30 triệu, đem lại doanh thu hơn 42 triệu và lợi nhuận là hơn 12 triệu.
- Thời gian chạy chiến dịch là 5 ngày đầu tháng và tập trung đẩy mạnh vào giữa tháng từ ngày 10 đến ngày 20.
- Tất cả các ngày đều có lợi nhuận, không có ngày nào lỗ.
- Doanh thu tỉ lệ thuận so với chi phí tất cả các ngày trong tháng.  
- Có 6 chiến dịch đem lại lợi nhuận cao nhất là youtube blogger với 65,44% so với tổng lợi nhuận.
- Có 5 chiến dịch gây lỗ nặng nhất là facebook lai với 47,82% so với tổng lỗ.

Chi phí và tỉ lệ chuyển đổi: 
- Tỉ lệ chuyển đổi của các chiến dịch không quá chênh lệnh nhau.
- Chi phí chuyển đổi của các chiến dịch có sự chênh lệch nhau rõ ràng.
- facebook lai là chiến dịch có chi phí chuyển đổi cao nhất nhưng tỉ lệ chuyển đổi gần như thấp nhất.

Hiệu suất:
- 2 chiến dịch có chi phí cao nhất và thấp nhất lần lượt là banner partner và facebook retargeting.
- 2 chiến dịch có doanh thu trung bình cao nhất và thấp nhất lần lượt là youtube blogger và facebook lai.
- youtube blogger là chiến dịch có doanh thu cao hơn hẳn so với các chiến dịch khác mặc dù chi phí ngang bằng.
- Giá trị trung bình mỗi đơn hàng của các chiến dịch có sự khác nhau, lớn nhất 8000vnđ của youtube blogger và thấp nhất là 1000vnđ của facebook lai. 

Thời gian: 
- Kết quả lượt tiếp cận, lượt click, lượng khách hàng tiềm năng và lượng đơn tương đồng với các ngày tập chung đẩy mạnh chiến dịch.
- Thứ 6 và thứ 7 là 2 ngày có doanh thu cao nhất trong tuần. 

## 8. Conclusion  
- Phân bổ thời gian chạy các chiến dịch vào 5 ngày đầu tháng và giữa tháng từ là hợp lý khi đấy cũng là khoảng thời gian mọi người có mới nhận lương, nhu cầu tiêu tiền cao hơn.
- youtube blogger là chiến dịch hiệu quả nhất.
- facebook lai là chiến dịch kém hiệu quả nhất.
- Chi phí tỉ lệ chuyển đổi CR2 tác động trực tiếp đến lợi nhuận, có thể thấy rõ khi các chiến dịch gây lỗ đều có tỉ lệ chuyển đổi CR2 tương đồng nhau nhưng chi phí cao.
-  Thứ 6 và thứ 7 là 2 ngày có doanh thu cao nhất trong tuần.

## 9. Recommendations
- Có thể giữ nguyên thời gian chạy chiến dịch là 5 ngày đầu tháng và tập trung đẩy mạnh vào giữa tháng từ ngày 10 đến ngày 20.
- Tiếp tục đẩy mạnh chiến dịch youtube blogger
- Cân nhắc cắt giảm chi phí của chiến dịch facebook lai và dồn tiền cho 2 chiến dịch đem lại lợi nhuận sau youtube blogger là instagram tier2 và instagram blogger.
- Khách hàng có xu hướng mua hàng vào cuối tuần cụ thể là thứ 6 và thứ 7, do đó có thể cân nhắc đẩy mạnh các chiến dịch trước đó 1 đến 2 ngày là thứ 4 và thứ 5.
