FROM alpine
ADD seafile-upload.sh /bin/
RUN chmod +x /bin/seafile-upload.sh
RUN apk -Uuv add curl ca-certificates
ENTRYPOINT /bin/seafile-upload.sh


