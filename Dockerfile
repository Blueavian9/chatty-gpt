FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    build-essential \
    libcurl4-openssl-dev \
    libjsoncpp-dev \
    pkg-config \
    g++ \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY chatty.cpp .

RUN g++ -std=c++11 -o chatty chatty.cpp $(pkg-config --cflags --libs jsoncpp) -lcurl

CMD ["./chatty"]
