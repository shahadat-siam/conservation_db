✅ 1. What is PostgreSQL?
 PostgreSQL হলো একটি শক্তিশালী ওপেন সোর্স রিলেশনাল ডেটাবেজ ম্যানেজমেন্ট সিস্টেম RDBMS যা SQL এবং JSON উভয় ধরনের ডাটা সাপোর্ট করে। এটি নিরাপদ এবং নির্ভরশীল ডাটাবেজ ম্যানেজমেন্ট সিস্টেম।

✅ 2. Explain the Primary Key and Foreign Key concepts in PostgreSQL.
 Primary Key হলো একটি টেবিলের এমন একটি কলাম যা প্রতিটি রেকর্ডকে ইউনিকভাবে চিহ্নিত করে। এটি NOT NULL এবং UNIQUE হয়।
 Foreign key হলো অন্য টেবিলের প্রাইমারি কি কে রেফার করে এবং দুটি টেবিলের মধ্যে সম্পর্ক তৈরি করে।


✅ 3. What is the difference between the VARCHAR and CHAR data types?
VARCHAR(n): ভেরিয়েবল লেংথ স্ট্রিং, যেখানে সর্বোচ্চ n অক্ষর ডাটা রাখা যায়। কম অক্ষর হলে অটোমেটিক কম জায়গা নেয়
CHAR(n): ফিক্সড লেংথ স্ট্রিং,  সবসময় ঠিক n অক্ষরের জায়গা দখল করে। অক্ষর কম থাকলে বাকি জায়গা ফাকা স্পেস দিয়ে ভরিয়ে ফেলে।

✅ 4. Explain the purpose of the WHERE clause in a SELECT statement.
 WHERE ক্লজ ব্যবহার করা হয় SELECT, UPDATE বা DELETE স্টেটমেন্টে  নির্দিষ্ট শর্ত অনুযায়ী রেকর্ড ফিল্টার করতে।

 
✅ 5. What are the LIMIT and OFFSET clauses used for?
 LIMIT: লিমিট ব্যবহার করে ঠিক কতটি রেকর্ড দেখতে চাই তা নির্ধারণ করা যায়
 OFFSET: অফসেট দিয়ে কতটি রেকর্ড স্কিপ করতে চাই সেটা করা হয়।