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
### 📍Phân tích các chiến dịch Marketing sau 1 tháng hoạt động

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
- CTR: Tỷ lệ nhấp chuột so với số lần hiển thị
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

## 7. Results and Findings 

## 8. Conclusion  

## 9. Recommendations
