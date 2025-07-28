FROM alpine

COPY entrypoint.sh /usr/local/bin/
ENTRYPOINT ["entrypoint.sh"]

# https://serverfault.com/questions/685697/multiple-commands-in-docker-cmd-directive
ADD start.sh /
RUN chmod +x /start.sh

CMD ["/start.sh"]