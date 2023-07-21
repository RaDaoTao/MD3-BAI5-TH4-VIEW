-- Bước 1: Chọn Database `classicmodels` để thao tác với cơ sở dữ liệu này (nếu chưa có Database xem lại bài TH1) :
USE `classicmodels`;

-- Tạo View có tên customer_views truy vấn dữ liệu từ bảng customers để lấy các dữ liệu: customerNumber, customerName, phone bằng câu lệnh SELECT:
CREATE VIEW customer_views AS
SELECT customerNumber, customerName, phone
FROM  customers;

-- Kết quả, ta sẽ có 1 bảng ảo customer_views, và sau đó chúng ta hoàn toàn có thể lấy dữ liệu từ bảng ảo này bằng lệnh:
select * from customer_views;

-- Cập nhật view customer_views: 
CREATE OR REPLACE VIEW customer_views AS
SELECT customerNumber, customerName, contactFirstName, contactLastName, phone
FROM customers
WHERE city = 'Nantes';

-- Kiểm tra bảng ảo customer_views sau khi thay đổi bằng lệnh va quan sát thay đổi:
select * from customer_views;

-- Xoá view customer_views:
DROP VIEW customer_views;