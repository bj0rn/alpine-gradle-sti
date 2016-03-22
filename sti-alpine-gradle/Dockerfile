FROM fabric8/java-alpine-openjdk8-jdk

LABEL io.k8s.description="Platform for building java apps" \
      io.k8s.display-name="builder 1.0.0" \
      io.openshift.expose-services="8080:http" \
      io.openshift.tags="Alpine java builder 1.0.0"

COPY ./.s2i/bin/ /usr/libexec/s2i

RUN chown -R 1001:1001 /opt/app-root

USER 1001

EXPOSE 8080

# TODO: Set the default CMD for the image
# CMD ["usage"]
