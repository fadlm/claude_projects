# pip install sentence-transformers
# !export HF_TOKEN=<your-huggingface-token>
from sentence_transformers import SentenceTransformer

model = SentenceTransformer("all-MiniLM-L6-v2")  # small, fast, 384-dim embeddings

sentence = "The weather is rainy today"
embedding = model.encode(sentence)

print(embedding.shape)   # (384,)
print(embedding[:10])    # first 10 values, as a sanity check
