FROM node:18

WORKDIR /app

# تثبيت المكتبات أولاً لضمان السرعة وعدم فقدان telegraf
COPY package*.json ./
RUN npm install

# نسخ باقي الملفات (بما فيها مفتاح firebase)
COPY . .

CMD ["node", "bot.js"]
