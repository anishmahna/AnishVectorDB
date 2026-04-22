FROM ubuntu:22.04
RUN apt-get update && apt-get install -y g++ make
WORKDIR /app
COPY . .
RUN g++ -std=c++17 -O2 -o db main.cpp
EXPOSE 8080
CMD ["./db"]
