ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh

# Install Python
RUN apk add --no-cache python3 py-pip
RUN pip3 install seashells

CMD [ "/run.sh" ]