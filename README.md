# 🎬 AI-Powered Movie Recommendation System using PostgreSQL pgvector

## 📖 Overview

This project demonstrates how PostgreSQL can be integrated with Artificial Intelligence technologies using the **pgvector** extension.

The goal of the project is to build the foundation of an AI-powered movie recommendation system by combining:

* PostgreSQL
* pgvector
* Python
* Sentence Transformers
* MovieLens Dataset

The project shows how movie titles can be transformed into vector embeddings and stored inside PostgreSQL for future recommendation and similarity-search applications.

---

## 🚀 Advanced PostgreSQL Technology

The main advanced PostgreSQL extension used in this project is:

### 🧠 pgvector

`pgvector` extends PostgreSQL by introducing a new **VECTOR** data type.

This allows PostgreSQL to:

* Store AI-generated embeddings
* Perform vector similarity searches
* Support recommendation systems
* Enable semantic search applications
* Integrate with modern AI workflows

Example:

```sql
CREATE EXTENSION IF NOT EXISTS vector;

ALTER TABLE movies
ADD COLUMN embedding VECTOR(384);
```

---

## 🛠 Technologies Used

* 🐘 PostgreSQL
* 🧠 pgvector
* ☁️ Neon (Cloud PostgreSQL)
* 🗄 DBeaver
* 🐍 Python
* 🐼 Pandas
* 🤖 Sentence Transformers
* 📊 SQL

---

## 🎞 Dataset

### MovieLens Small Dataset

The project uses the MovieLens Small Dataset.

Dataset statistics:

* 🎬 9,742 movies
* ⭐ 100,836 ratings

Files used:

* movies.csv
* ratings.csv

---

## 🗄 Database Structure

### Movies Table

| Column    | Type        |
| --------- | ----------- |
| movieid   | INTEGER     |
| title     | TEXT        |
| genres    | TEXT        |
| embedding | VECTOR(384) |

### Ratings Table

| Column    | Type    |
| --------- | ------- |
| userid    | INTEGER |
| movieid   | INTEGER |
| rating    | NUMERIC |
| timestamp | BIGINT  |

---

## 📈 SQL Analysis Performed

The following analyses were performed using PostgreSQL:

### ✅ Total Number of Movies

```sql
SELECT COUNT(*) FROM movies;
```

Result: **9,742 movies**

### ✅ Total Number of Ratings

```sql
SELECT COUNT(*) FROM ratings;
```

Result: **100,836 ratings**

### ✅ Most Frequently Rated Movies

Movies with the highest number of user ratings.

### ✅ Highest Rated Movies

Movies with the highest average rating.

### ✅ Genre Distribution Analysis

Analysis of movie genre frequency within the dataset.

### ✅ pgvector Verification

```sql
SELECT
    column_name,
    udt_name
FROM information_schema.columns
WHERE table_name = 'movies';
```

Result:

```text
movieid   -> int4
embedding -> vector
title     -> text
genres    -> text
```

---

## 🤖 Embedding Generation

Movie titles were converted into vector embeddings using the **all-MiniLM-L6-v2** model from Sentence Transformers.

Example Python code:

```python
from sentence_transformers import SentenceTransformer

model = SentenceTransformer("all-MiniLM-L6-v2")
```

The model generates **384-dimensional embeddings** for each movie title.

Example output:

```text
Toy Story (1995)

[-0.0828, 0.0530, 0.0535, ...]
```

---

## 🎯 Project Features

* ✅ PostgreSQL database design
* ✅ Data import and validation
* ✅ SQL-based movie analysis
* ✅ pgvector integration
* ✅ AI embedding generation
* ✅ Vector data storage
* ✅ Recommendation system foundation
* ✅ Semantic search foundation

---

## 🌍 Real-World Applications

This approach can be applied to:

* 🎬 Netflix-style recommendation systems
* 🎵 Spotify recommendation systems
* 📺 YouTube content recommendations
* 🛒 E-commerce product recommendations
* 🔎 Semantic search systems
* 🤖 AI chatbots
* 📄 Document similarity systems

---

## 👩‍💻 Author

**Nisa Begum Burucu**

Computer Engineering Student

PostgreSQL • AI • Data Science • Recommendation Systems
