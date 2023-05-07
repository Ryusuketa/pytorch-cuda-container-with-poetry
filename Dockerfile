FROM pytorch/pytorch:2.0.0-cuda11.7-cudnn8-devel
WORKDIR /app

RUN apt-get update &&\
    apt-get install unzip less -y

COPY poetry.lock pyproject.toml /app

RUN pip install --upgrade pip &&\
    conda update -f -y conda &&\
    conda install -y pytorch-lightning

RUN conda install -y poetry &&\
    poetry config virtualenvs.create false &&\
    poetry install
