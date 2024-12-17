FROM ultramcu/ubuntu4bbb

RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    apt-get clean

RUN pip3 install jupyter

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
