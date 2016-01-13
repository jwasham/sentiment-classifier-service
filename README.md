# sentiment-classifier-service

This is a self-contained service utilizing the NLTK for sentiment classification.

---

Environments:

- development
- production

---

Usage:

    cd docker
    docker build -t sentiment_service .
    
    docker run -d -P --name sentiment_service -e ENV=development -v /path/on/host:/application sentiment_service
    [OR]
    docker run -d -P --name sentiment_service -e ENV=production sentiment_service

---

Todo:

- Python 3 (DONE)
- flask (DONE)
- uWSGI (DONE)
- nginx
- NLTK
- set up features
- generate training corpus
- test analysis
- adjust features
