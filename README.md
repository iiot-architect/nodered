This was created for Hands-on for in-house for Kubernetes with MicroK8s.

At the first, please install MicroK8s and Docker.
Then,  create the container image and the kubernetes application set with following commands.

<pre>
git clone https://github.com/iiot-architect/nodered.git
docker build ./nodered -t local-node-red:latest
sudo docker save local-node-red:latest -o /tmp/node-red.tar
sudo microk8s ctr image import /tmp/snap-private-tmp/snap.docker/tmp/node-red.tar
kubectl apply -f ./nodered/application.yaml
</pre>

Finally, after opening other command window, stress to the application with the following commands.
<pre>
kubectl get svc node-red
while sleep 0.01; do wget -q -O- http://[EXTERNAL-IP]:1880; done
</pre>
