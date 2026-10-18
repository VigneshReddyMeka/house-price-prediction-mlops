sudo apt update
sudo docker info
sudo docker --version
sudo apt install -y docker.io
sudo systemctl enable --now docker 
sudo docker --version
docker login -u mvigneshreddy
docker --version
exit
sudo docker build -t bean:1.0
sudo docker build -t mlops-house-price:1.0
cd mlops-house-price
sudo docker build -t bean:1.0
sudo docker build -t mlops-house-price:1.0
sudo docker build -t bean:1.0 .
sudo doker images
sudo docker images
sudo docker run -d--name mlops-house-price
sudo docker run -d--name mlops-house-pricerestart unless-stoppedp 8000:8000bean:1.0
sudo docker run -d --name mlops-house-price restart unless-stopped -p 8000:8000 bean:1.0
sudo docker run -d   --name mlops-house-price   --restart unless-stopped   -p 8000:8000   bean:1.0
sudo docker ps
sudo docker logs mlops-house-price
curl http://127.0.0.1:8000
curl http://127.0.0.1:8000/health
mkdir frontend
cd frontend
nano index.html
nano style.css
nano script.js
cd..
cd ..
ls
find app -maxdepth 2 -type f
grep -R -nE 'FastAPI|Flask|app *=|@app\.(get|post)|predict|uvicorn' app --include="*.py"
sudo docker ps
cat app/schemas.py
sed -n '1,100p' app/main.py
ls -l frontend
nano app/main.py
cd app
rm main.py
nano main.py
cd ..
nano frontend/index.html
nano frontend/script.js
cat Dockerfile
cat .dockerignore
nano Dockerfile
ls -l frontend
sudo docker build -t bean:1.0 .
sudo docker stop mlops-house-price
sudo docker rm mlops-house-price
sudo docker run -d   --name mlops-house-price   --restart unless-stopped   -p 8000:8000   bean:1.0
sudo docker ps
curl -I http://127.0.0.1:8000/
curl http://127.0.0.1:8000/health
curl -i http://127.0.0.1:8000/
curl -i http://127.0.0.1:8000/health
curl -I http://127.0.0.1:8000/static/style.css
curl -I http://127.0.0.1:8000/static/script.js
git init
git add .
git commit
