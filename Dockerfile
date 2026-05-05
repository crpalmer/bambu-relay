FROM python
ENV BAMBU_HOST=""
ENV ACCESS_CODE=""
ENV mqtt_host=""

WORKDIR /app

COPY bambu-relay.py /app/

RUN pip install paho-mqtt

CMD [ "python", "./bambu-relay.py" ]
