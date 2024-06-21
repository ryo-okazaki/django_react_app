FROM python:3.12.4

# __pycache__、.pycを作成しない
ENV PYTHONDONTWRITEBYTECODE=1

# Pythonのバッファリングを無効化し、出力をリアルタイムに表示
ENV PYTHONUNBUFFERED 1

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

RUN apt-get update

RUN pip install --upgrade pip

COPY ./requirements.txt /requirements.txt
RUN pip install --no-cache-dir -r /requirements.txt

WORKDIR /workdir

ENTRYPOINT ["/entrypoint.sh"]
