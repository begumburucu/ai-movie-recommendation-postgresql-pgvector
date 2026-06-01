import pandas as pd
from sentence_transformers import SentenceTransformer

print("Model yükleniyor...")

model = SentenceTransformer("all-MiniLM-L6-v2")

print("CSV okunuyor...")

movies = pd.read_csv("movies.csv")

print(f"{len(movies)} film bulundu.")

sample = movies.head(5)

embeddings = model.encode(
    sample["title"].tolist(),
    show_progress_bar=True
)

for i, movie in enumerate(sample["title"]):
    print(movie)
    print(embeddings[i][:5])
    print()