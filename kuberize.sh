# kuberize.sh


# Working from here
# https://ropenscilabs.github.io/r-docker-tutorial/04-Dockerhub.html

docker login --username=troyhernandez
docker images
docker tag 4e7a5cc80ba4 troyhernandez/chi_ej_map:v1
docker push troyhernandez/chi_ej_map

# https://github.com/holken1/deploying-r-on-cloud/tree/master/shiny-on-ibm-cloud

# Setting k8s context
# https://cloud.ibm.com/kubernetes/clusters/bqupbgcd0gr7pirqc1m0/access?region=us-south&resourceGroup=2ec6947eed92455996c6020c80cd7ee9

# ibmcloud login -a cloud.ibm.com -r us-south -g default
ibmcloud login --sso
ibmcloud ks cluster config --cluster bqupbgcd0gr7pirqc1m0
kubectl config current-context
touch chi_ej_map.yaml
# edit file appropriately
kubectl apply -f chi_ej_map.yaml
# Open service
touch chi-ej-map-nodepart.yaml
kubectl apply -f chi-ej-map-nodepart.yaml

# Get IP address
ibmcloud ks workers --cluster shinygeo
# ID                                                    Public IP        Private IP      Flavor               State    Status   Zone    Version
# kube-bqupbgcd0gr7pirqc1m0-shinygeo-default-00000191   150.238.61.200   10.221.139.34   b3c.4x16.encrypted   normal   Ready    dal10   1.16.9_1531
# kube-bqupbgcd0gr7pirqc1m0-shinygeo-default-0000022a   150.238.61.203   10.221.139.40   b3c.4x16.encrypted   normal   Ready    dal10   1.16.9_1531
# kube-bqupbgcd0gr7pirqc1m0-shinygeo-default-00000398   150.238.61.197   10.221.139.22   b3c.4x16.encrypted   normal   Ready    dal10   1.16.9_1531
kubectl get services
# NAME                 TYPE        CLUSTER-IP       EXTERNAL-IP   PORT(S)          AGE
# chi-ej-map-service   NodePort    172.21.254.156   <none>        3838:30778/TCP   2m11s
# kubernetes           ClusterIP   172.21.0.1       <none>        443/TCP          152m

http://150.238.61.197:30778
http://150.238.61.200:30778
http://150.238.61.203:30778
