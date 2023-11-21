FROM debian:bullseye-slim

ENV PYTHONUNBUFFERED=1
ENV DEBIAN_FRONTEND=noninteractive
ENV IS_CONTAINERIZED=True

RUN apt-get update && apt-get upgrade -y && apt-get install -y --no-install-recommends \
    python2

WORKDIR /var/www

CMD ["/bin/bash"]
