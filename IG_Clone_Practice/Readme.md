## Project Overview
This project used `mySQL` by designing a database inspired by Instagram to analyze user engagement, photo statistics, and hashtags.

## Database Design
### Schema
- users (id, username, created_at)
- photos (id, image_url, user_id, created_at)
- comments (id, comment_text, photo_id, user_id, created_at)
- likes (user_id, photo_id, created_at)
- follows (follower_id, followee_id, created_at)
- tags (id, tag_name, created_at)
- photo_tags (photo_id, tag_id)

### Relationships
- `users` → `comments`: One-to-Many
- `photos` → `comments`: One-to-Many
- `users` ↔ `users`: Many-to-Many (via `follows` table)
- `users` ↔ `photos`: Many-to-Many (via `likes` table)  
- `photos` ↔ `tags`: Many-to-Many (via `photo_tags` table)

## Features
- Find 5 oldest users.
- Most popular registration date.
- Identify inactive users (users with no photos).
- Identify most popular photo (and user who create it).
- Calculate average number of photos per user.
- Find top 5 most commonly used hashtages.
- Find users who have liked every single photo.


