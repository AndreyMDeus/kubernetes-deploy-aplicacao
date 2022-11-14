echo "Criando as imagens..........."

docker build -t andreymartins/aplic-backend:1.0 backend/.
docker build -t andreymartins/aplic-frontend:1.0 frontend/.
docker build -t andreymartins/aplic-database:1.0 database/.

echo "Realizando o push das imagens...."

docker push andreymartins/aplic-backend:1.0
docker push andreymartins/aplic-frontend:1.0
docker push andreymartins/aplic-database:1.0

echo "Criando os serviços no cluster Kubernetes....."

kubectl apply -f ./services.yml

echo "Criando os deployments......."

kubectl apply -f ./deployment.yml