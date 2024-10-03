# ♻️Digital-Marketing-Analysis

## ✏️Các thao tác chính bao gồm
Dự án tập trung vào việc phân tích và đánh giá tổng quan các chiến dịch marketing đã hoạt động trong 1 tháng vừa qua với các thao tác chính bao gồm:
- Đa số sử dụng DDL(Data Definition Language) và DML(Data Manipulation Language) để tạo thêm và cập nhật dữ liệu mới
- Sử dụng Power BI để trực quan hóa dữ liệu từ đó đưa ra góc nhìn toàn diện về các chiến dịch sau 1 tháng hoạt động 

## ✏️Thông tin dữ liệu (Dataset)
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
