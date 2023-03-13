# Pull base image.
FROM ubuntu:latest

RUN \
# Update
apt-get update -y && \
# Install git
apt-get install git -y && \
# Install Unzip
apt-get install unzip -y && \
# need wget
apt-get install wget -y && \
# need curl
apt-get install curl -y && \
# vim
apt-get install vim -y && \
# jq
apt-get install jq -y && \
# gnupg
apt-get install gnupg -y && \
# common
apt-get install software-properties-common -y

################################
# Install Kubectl
################################
RUN curl -L "https://storage.googleapis.com/kubernetes-release/release/v1.19.1/bin/linux/amd64/kubectl" -o "kubectl"
RUN chmod +x kubectl && $ifSudo mv kubectl /usr/local/bin/kubectl

################################
# Install Helm3
################################

RUN curl -L "https://get.helm.sh/helm-v3.5.4-linux-amd64.tar.gz" -o "helm.tar.gz"
RUN mkdir -p helm && tar -zxvf helm.tar.gz -C helm
RUN chmod +x helm/linux-amd64/helm && $ifSudo mv helm/linux-amd64/helm /bin/helm
RUN helm plugin install https://github.com/databus23/helm-diff

################################
# Install Terraform
################################
# Install tfenv
RUN git clone https://github.com/tfutils/tfenv.git /opt/tfenv && chmod 777 -R /opt/tfenv
RUN ln -s /opt/tfenv/bin/* /usr/local/bin
#install latest terraform
RUN tfenv install latest
#INSTALL tflint
RUN curl -s https://raw.githubusercontent.com/terraform-linters/tflint/master/install_linux.sh | bash

# Check that it's installed
RUN terraform --version 

################################
# Install python
################################

RUN apt-get install -y python3-pip
#RUN ln -s /usr/bin/python3 python
RUN pip3 install --upgrade pip
RUN python3 -V
RUN pip --version
