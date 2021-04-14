FROM python:3-slim-buster

WORKDIR /root/

RUN apt update && apt install -y golang git dnsutils
RUN go get github.com/fullstorydev/grpcurl/...
RUN go install github.com/fullstorydev/grpcurl/cmd/grpcurl
RUN git clone https://github.com/andrew-kirkham/terminal_env.git && cd terminal_env/setup_scripts && ./firstSetup.sh bash
RUN echo "export PATH=$PATH:/root/go/bin" >> ~/.bashrc

CMD ["/bin/bash]
