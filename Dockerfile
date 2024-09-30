# Sử dụng hình ảnh Node.js chính thức từ Docker Hub
FROM node:20

# Thiết lập thư mục làm việc trong container
WORKDIR /usr/src/app

# Sao chép file package.json và package-lock.json
COPY package*.json ./

# Cài đặt các dependencies
RUN npm install

# Sao chép toàn bộ mã nguồn vào container
COPY . .

# Expose port 8000
EXPOSE 8000

# Lệnh để chạy ứng dụng khi container khởi động
CMD ["node", "index.js"]
