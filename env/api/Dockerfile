FROM python:3.9

RUN apt-get update

ENV APP /app
ENV PYTHONUNBUFFERED 1  # python 執行訊息重新顯示到標準輸出

RUN mkdir $APP
WORKDIR $APP

COPY ./ .

RUN pip install --editable .

# genenv
RUN VERSION=RELEASE python genenv.py
 
# 預設執行的指令
#CMD ["pipenv", "run", "uvicorn", "api.main:app", "--host", "0.0.0.0", "--port", "8888"]
