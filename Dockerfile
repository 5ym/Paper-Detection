FROM alpine

RUN apk add --no-cache py-pip py3-wheel gcc python3-dev musl-dev libffi-dev czmq-dev cmake ninja g++ openssl-dev && \
    pip install jupyterlab scikit-build && pip install opencv-python

WORKDIR /root/jupyter

EXPOSE 8888

CMD jupyter lab --ip 0.0.0.0 --allow-root