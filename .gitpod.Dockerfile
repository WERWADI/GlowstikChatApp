FROM gitpod/workspace-full

USER gitpod

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "/tmp/awscliv2.zip" && unzip /tmp/awscliv2.zip -d /tmp/awscli && sudo /tmp/awscli/aws/install && rm -f /tmp/awscliv2.zip && sudo rm -rf /tmp/awscli
RUN npm install -g @aws-amplify/cli \
    npm install -g ionic

USER root
