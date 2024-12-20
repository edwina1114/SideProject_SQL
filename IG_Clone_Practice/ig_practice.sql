-- 1. Finding 5 Oldest Users 
SELECT 
    username, created_at
FROM
    users
ORDER BY created_at ASC
LIMIT 5;

-- 2. MOST Popular Registration Date
SELECT * FROM users;

SELECT 
    DAYNAME(created_at) AS day,
    COUNT(*) AS total
FROM users
GROUP BY day
ORDER BY total DESC;

-- 3. Identify Inactive Users (users with no photos)
SELECT
    username
FROM users
LEFT JOIN photos ON users.id = photos.user_id
WHERE photos.id IS NULL;
    
-- 4. Identify Most Popular Photo (and user who created it) 
SELECT 
    users.username,
    photos.id,
    photos.image_url,
    COUNT(*) AS total_likes
FROM
    photos 
		JOIN
    likes ON likes.photo_id = photos.id
		JOIN
    users ON users.id = photos.user_id
GROUP BY photos.id
ORDER BY total_likes DESC;

-- 5. Calculate average number pf photos per user
-- total number of photos / total number of users
SELECT 
    (SELECT 
            COUNT(*)
        FROM
            photos) / (SELECT 
            COUNT(*)
        FROM
            users) AS avg;

-- 6. Find Top 5 Most Commonly Used Hashtags
SELECT * FROM tags;
SELECT * FROM photo_tags;

SELECT 
    tags.tag_name, 
    photo_tags.tag_id,
    COUNT(*) AS tag_counts
FROM
    tags
        JOIN
    photo_tags ON tags.id = photo_tags.tag_id
GROUP BY photo_tags.tag_id
ORDER BY tag_counts DESC
LIMIT 5;

-- 7. Finding Bots: Users Who Have Liked Every Single Photo
SELECT * FROM users;
SELECT * FROM photos; 
SELECT * FROM likes;

SELECT COUNT(id) FROM photos;

SELECT 
    username, COUNT(*) AS num_of_likes
FROM
    likes
        JOIN
    users ON users.id = likes.user_id
GROUP BY likes.user_id
HAVING num_of_likes = (SELECT COUNT(id) FROM photos);