FROM onlyoffice/documentserver:6.4.2.6

COPY --chmod=+x patch.bash ./
COPY patch.py ./

RUN ./patch.bash