FROM python
ENV BAMBU_HOST=""
ENV ACCESS_CODE=""
ENV mqtt_host=""

WORKDIR /app

COPY bambu-relay.py /app/
COPY bambu.cert /app/
COPY bambu-access-code.txt /app/

RUN pip install paho-mqtt

CMD [ "python", "./bambu-relay.py" ]
