FROM alpine

USER root

LABEL io.k8s.description="Platform for building java apps" \
      io.k8s.display-name="builder 1.0.0" \
      io.openshift.expose-services="8080:http" \
      io.openshift.tags="Alpine java builder 1.0.0"

RUN apk update
RUN apk add --update tar bash openjdk8 

LABEL io.openshift.s2i.scripts-url=image:///usr/libexec/s2i
COPY ./.s2i/bin/ /usr/libexec/s2i

#RUN chown -R 1001:1001 /opt/app-root
RUN chmod -R 777 /tmp 
RUN chmod -R 777 /home

EXPOSE 8080

# TODO: Set the default CMD for the image
# CMD ["usage"]
