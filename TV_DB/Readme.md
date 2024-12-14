## Project Overview
This project used `mySQL` by designing a database inspired by Instagram to analyze user engagement, photo statistics, and hashtags.

## Database Design
### Schema
- reviewers (id, first_name, last_name)
- series (id, title, released_year, genre)
- reviews (id, rating, series_id, reviewer_id)

### Relationships
- `reviewers` → `reviews`: One-to-Many
- `series` → `reviews`: One-to-Many
- `reviewers` ↔ `series`: Many-to-Many (via reviews table)

## Features
- Find 5 oldest users.
- Most popular registration date.
- Identify inactive users (users with no photos).
- Identify most popular photo (and user who create it).
- Calculate average number of photos per user.
- Find top 5 most commonly used hashtages.
- Find users who have liked every single photo.


