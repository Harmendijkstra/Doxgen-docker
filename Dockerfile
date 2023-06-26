FROM alpine:latest
RUN echo "http://dl-cdn.alpinelinux.org/alpine/v3.14/main" > /etc/apk/repositories

RUN apk --update --no-cache add doxygen graphviz git
    
CMD ["doxygen", "/Doxygen"]
