FROM ghcr.io/qmk/qmk_cli:latest
WORKDIR /usr/src

RUN git clone --recursive --branch 0.22.14 https://github.com/qmk/qmk_firmware.git __qmk__
RUN qmk setup --home __qmk__ --yes
RUN /usr/bin/python3 -m pip install -r __qmk__/requirements.txt
