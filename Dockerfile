FROM hashicorp/packer:light
RUN apk update && \
    apk upgrade && \
    apk add py-pip gcc python3-dev libffi-dev musl-dev openssl-dev make bash openssh ansible && \
    pip3 install awscli
