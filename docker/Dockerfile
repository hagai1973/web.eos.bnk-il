FROM ppodgorsek/robot-framework:7.1.0

USER root

COPY requirements.txt /tmp/

# Install robotframework librairies
RUN pip3 install \
    --no-cache-dir \
    -r /tmp/requirements.txt

RUN dnf -y install python3-tkinter python3-devel && dnf clean all

USER ${ROBOT_USER}
