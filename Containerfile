FROM fedora:latest

RUN dnf upgrade -y
RUN dnf install -y python3-pip
RUN useradd --create-home --shell /bin/bash jupyter

USER jupyter

ENV HOME="/home/jupyter"
ENV PATH="$HOME/.local/bin:$PATH"

RUN pip install --user jupyterlab numpy scipy matplotlib

WORKDIR $HOME
EXPOSE 8888

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser"]
