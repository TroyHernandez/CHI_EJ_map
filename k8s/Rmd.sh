# Rmd.sh

sudo docker run -d -p 80:80 chi_ej_html:v3

cp ~/CHI_EJ_map/Chicago_EJ_map.html ~/CHI_EJ_map/Rmd/index.html

sudo docker build -t chi_ej_html:v3 .

docker login --username=troyhernandez
docker images
docker tag 0280fcc722b4 troyhernandez/chi_ej_html:v1
docker push troyhernandez/chi_ej_html

# Open service
kubectl apply -f chi_ej_html.yaml
kubectl apply -f chi-ej-html-nodepart.yaml

# Get IP address
ibmcloud ks workers --cluster mycluster-dal10-b3c.4x16
# ID                                                    Public IP        Private IP      Flavor               State    Status   Zone    Version
# kube-bqupbgcd0gr7pirqc1m0-shinygeo-default-00000191   150.238.61.200   10.221.139.34   b3c.4x16.encrypted   normal   Ready    dal10   1.16.9_1531
# kube-bqupbgcd0gr7pirqc1m0-shinygeo-default-0000022a   150.238.61.203   10.221.139.40   b3c.4x16.encrypted   normal   Ready    dal10   1.16.9_1531
# kube-bqupbgcd0gr7pirqc1m0-shinygeo-default-00000398   150.238.61.197   10.221.139.22   b3c.4x16.encrypted   normal   Ready    dal10   1.16.9_1531
kubectl get services
# NAME                 TYPE        CLUSTER-IP       EXTERNAL-IP   PORT(S)          AGE
# chi-ej-map-service   NodePort    172.21.254.156   <none>        3838:30778/TCP   2m11s
# kubernetes           ClusterIP   172.21.0.1       <none>        443/TCP          152m

kubectl get pods


