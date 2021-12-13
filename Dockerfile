FROM ubuntu:20.04
RUN apt update && apt -y upgrade
RUN apt -y install make && apt -y install build-essential
WORKDIR /app
COPY . .
RUN make all
CMD ./hello
