wget https://github.com/openshift/origin/releases/download/v3.11.0/openshift-origin-client-tools-v3.11.0-0cbc58b-linux-64bit.tar.gz

sudo tar xvzf openshift*.tar.gz
cd openshift-origin-client-tools*/
sudo mv  oc kubectl  /usr/local/bin/
oc version
cat << EOF | sudo tee /etc/docker/daemon.json
{
    "insecure-registries" : [ "172.30.0.0/16" ]
}
EOF
sudo systemctl restart docker
