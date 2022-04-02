FROM onlyoffice/documentserver:6.4.2.6

COPY patch.bash ./
COPY patch.py ./

RUN bash ./patch.bash