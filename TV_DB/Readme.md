## Project Overview
This project used `MySQL` to design a database inspired by a TV series review system, enabling the analysis of reviewer activity, TV show ratings, and unrated series.

## Database Design
### Schema
- reviewers (id, first_name, last_name)
- series (id, title, released_year, genre)
- reviews (id, rating, series_id, reviewer_id)

### Relationships
- `reviewers` → `reviews`: One-to-Many
- `series` → `reviews`: One-to-Many
- `reviewers` ↔ `series`: Many-to-Many (via `reviews` table)

## Features
- Find the average rating for each TV show.
- Identify ratings given by each reviewer.
- List TV shows that have not received any ratings.
- Identify active reviewers (those who have submitted reviews) and inactive reviewers (those who haven’t).


