# sql-autogrowth-checker
Script for analyzing SQL Server database files and auto growth settings

# 📊 SQL Server Auto Growth Insight Script

## 🇬🇧 English

This SQL script provides a detailed view of database file configuration, growth settings, and storage paths in any SQL Server instance.  
It’s a handy tool for DBAs and data engineers to monitor and optimize file growth strategies.  

### 🧠 Key Features
- Database name, file type, and logical/physical file names  
- Current size (in MB)  
- Growth type (percent or KB)  
- Growth increment and maximum size  
- File physical path  

> 💡 Covers both **data (.mdf/.ndf)** and **log (.ldf)** files across all databases.

---

## 🇮🇷 فارسی

این اسکریپت SQL نمایی کامل از تنظیمات فایل‌های دیتابیس، مقادیر Auto Growth و مسیر ذخیره‌سازی فایل‌ها در SQL Server فراهم می‌کند.  
ابزاری مفید برای DBAها و مهندسین داده جهت بررسی و بهینه‌سازی رشد فایل‌ها.  

### 💎 ویژگی‌ها
- نام دیتابیس، نوع فایل و نام منطقی/فیزیکی فایل  
- نمایش اندازه فعلی (MB)  
- نوع رشد (درصد یا کیلوبایت)  
- میزان رشد در هر مرحله و حداکثر سایز فایل  
- مسیر فیزیکی فایل روی دیسک  

> 📌 شامل هر دو نوع فایل دیتا (mdf/ndf) و لاگ (ldf) برای همه دیتابیس‌ها.

---

## 🇸🇦 العربية

يوفر هذا السكربت SQL نظرة شاملة على إعدادات ملفات قواعد البيانات، وإعدادات النمو التلقائي، ومسارات التخزين في SQL Server.  
أداة مفيدة لمسؤولي قواعد البيانات (DBAs) ومهندسي البيانات لمراقبة وتحسين استراتيجيات النمو.  

### ✨ الميزات
- اسم قاعدة البيانات، نوع الملف، الأسماء المنطقية والفيزيائية  
- الحجم الحالي (بالميغابايت)  
- نوع النمو (نسبة مئوية أو KB)  
- مقدار النمو في كل مرة والحد الأقصى للحجم  
- المسار الفيزيائي للملف على القرص  

> 🛠 يشمل ملفات البيانات (.mdf/.ndf) وملفات السجل (.ldf) لجميع قواعد البيانات.

---

## 📎 Sample Output

| DatabaseName | FileType | FileName | CurrentSizeMB | Growth | is_percent_growth | MaxSize | PhysicalName          |
|--------------|----------|----------|---------------|--------|------------------|---------|-----------------------|
| MyDB         | ROWS     | MyDB     | 512           | 64     | 0                | -1      | C:\SQLData\MyDB.mdf   |
| MyDB         | LOG      | MyDB_log | 128           | 10     | 1                | 2048    | C:\SQLData\MyDB.ldf   |

---

## 🚀 How to Use
1. Open **SQL Server Management Studio (SSMS)**.  
2. Connect to your SQL Server instance.  
3. Run the script in a new query window.  
4. Review database files and growth configurations.  

---

## 💬 Contact
Made with ❤️ by Mehdi Lorvand  
GitHub: [mlorvand](https://github.com/mlorvand)  
LinkedIn: [Mahdi Lorvand](https://www.linkedin.com/in/mahdi-lorvand-08aa151a4/)  
