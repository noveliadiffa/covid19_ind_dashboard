-- Analysis 1: Addiction Score by Platform
-- Tujuan: Melihat platform mana yang mengakibatkan kecanduan

SELECT 
    most_used_platform,
    ROUND(AVG(addicted_score), 2) AS avg_addiction_score,
    COUNT(*) AS total_students
FROM social_media_students
GROUP BY most_used_platform
ORDER BY avg_addiction_score DESC;

-- Analysis 2: Daily Usage & Mental Health by Academic Impact
-- Tujuan: Apakah media sosial mengganggu akademik dan pengaruhnya terhadap kesehatan mental

SELECT 
    affects_academic_performance,
    ROUND(AVG(avg_daily_usage_hours), 2) AS avg_usage,
    ROUND(AVG(mental_health_score), 2) AS avg_mental_health,
    COUNT(*) AS total_students
FROM social_media_students
GROUP BY affects_academic_performance;

-- Analysis 3: Conflicts vs Addiction Score
-- Tujuan: Apakah konflik karena media sosial berbanding lurus dengan tingkat kecanduan

SELECT 
    conflicts_over_social_media,
    ROUND(AVG(addicted_score), 2) AS avg_addicted_score
FROM social_media_students
GROUP BY conflicts_over_social_media
ORDER BY conflicts_over_social_media;

-- Analysis 4: Sleep Hours vs Mental Health Score
-- Tujuan: Mengukur apakah tidur cukup berpengaruh pada kesehatan mental

SELECT 
    sleep_hours_per_night,
    ROUND(AVG(mental_health_score), 2) AS avg_mental_health
FROM social_media_students
GROUP BY sleep_hours_per_night
ORDER BY sleep_hours_per_night;

-- Analysis 5: Relationship Status vs Addiction Score
-- Tujuan: Apakah status hubungan berkaitan dengan tingkat kecanduan media sosial

SELECT 
    relationship_status,
    ROUND(AVG(addicted_score), 2) AS avg_addicted_score
FROM social_media_students
GROUP BY relationship_status
ORDER BY avg_addicted_score DESC;

-- Analysis 6: Country-wise Mental Health & Addiction Score
-- Tujuan: Membandingkan skor mental health dan kecanduan antar negara

SELECT 
    country,
    ROUND(AVG(mental_health_score), 2) AS avg_mental_health,
    ROUND(AVG(addicted_score), 2) AS avg_addicted_score
FROM social_media_students
GROUP BY country
ORDER BY avg_mental_health DESC;

-- Analysis 7: Platform Terbanyak Digunakan oleh Mahasiswa yang Merasa Terganggu Akademiknya
-- Tujuan: Mengetahui platform yang dominan digunakan oleh mahasiswa yang merasa terganggu secara akademik

SELECT 
    most_used_platform,
    COUNT(*) AS total_academic_affected_users
FROM social_media_students
WHERE affects_academic_performance = 'Yes'
GROUP BY most_used_platform
ORDER BY total_academic_affected_users DESC;
