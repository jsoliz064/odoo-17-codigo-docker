FROM python:3.12.4

# Instalar las dependencias del sistema necesarias
RUN apt update && apt install -y \
    libsasl2-dev \
    python3-dev \
    libldap2-dev \
    libssl-dev \
    gcc \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# RUN apt-get update && apt-get install -y \
#     libsasl2-dev \
#     python3-dev \
#     libldap2-dev \
#     libssl-dev \
#     gcc \
#     postgresql-client \
#     libpq-dev \
#     wkhtmltopdf \
#     && apt-get clean \
#     && rm -rf /var/lib/apt/lists/*