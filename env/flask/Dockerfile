FROM python:3.9

ENV APP /app
ENV PYTHONUNBUFFERED 1  # python 執行訊息重新顯示到標準輸出

RUN mkdir $APP
WORKDIR $APP

COPY ./ .

RUN /usr/local/bin/python -m pip install --upgrade pip && \
    pip3 install -r env/flask/requirements.txt

RUN pip install --editable .


#ENTRYPOINT ["tail","-f","/dev/null"]
#ENTRYPOINT ["tail"]
#CMD ["-f","/dev/null"]
