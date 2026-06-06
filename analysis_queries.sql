-- Toplam film sayısı
SELECT COUNT(*) FROM movies;

-- Toplam değerlendirme sayısı
SELECT COUNT(*) FROM ratings;

-- Örnek kayıtlar
SELECT movieid,title,genres
FROM movies
LIMIT 10;

-- En çok puanlanan filmler
SELECT
m.title,
COUNT(r.rating)
FROM movies m
JOIN ratings r
ON m.movieid=r.movieid
GROUP BY m.title
ORDER BY COUNT(r.rating) DESC
LIMIT 10;

-- En yüksek puanlı filmler
SELECT
m.title,
ROUND(AVG(r.rating),2)
FROM movies m
JOIN ratings r
ON m.movieid=r.movieid
GROUP BY m.title
HAVING COUNT(*)>50
ORDER BY AVG(r.rating) DESC
LIMIT 10;
