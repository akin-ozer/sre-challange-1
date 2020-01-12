<h1>Task 1</h1>

<b>Python code run command:</b>
> python dupids.py passwd.txt

<b>One liner shell command:</b>
> bash one-liner.sh

<h1>Task 2</h1>
<b>Postgres config</b>

> cd task-2/postgres

> terraform init

> terraform apply

<p>terrafom output displays IP of PostgreSQL</p>

<b>Webapp</b>
<p>Contains flask app, 

> use "task-2/postfres/build-and-push.sh" to build and push the docker image</p>

<b>GCR repo</b>

> cd task2-/gcr 

>terraform init

>terraform apply

<b>Kubernetes cluster creation</b>
<p>Creates and updates kubeconfig to use newly created cluster, 

> use "task-2/kubernetes-cluster/google-create-cluster.sh"</p>

<b>Kubernetes deployments</b>
<p>Creates Nginx Ingress to serve webapp created previously</p>

> use "task-2/nginx/install-nginx.sh" to create Nginx Ingress

Deploy webapp

> kubectl apply -f task-2/kubernetes-deployments/flaskapp

