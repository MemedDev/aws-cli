FROM amazonlinux:latest

MAINTAINER Memed SRE Team <sre@memed.com.br>

# Add PIP
RUN yum update -y && yum install -y python-pip

# Add AWS CLI
RUN pip install --user awscli

# Add Groff
RUN yum update && yum install -y groff

# include aws exec in the PATH env var
ENV PATH=$PATH:/root/.local/bin/

# default aws profile
ENV AWS_PROFILE=memed
