FROM plugins/base:amd64

LABEL org.label-schema.version=latest
LABEL org.label-schema.vcs-url="https://github.com/drone-plugins/drone-git.git"
LABEL org.label-schema.name="Drone Git"
LABEL org.label-schema.vendor="Drone.IO Community"
LABEL org.label-schema.schema-version="1.0"

RUN apk add --no-cache ca-certificates git openssh curl perl

ADD release/linux/amd64/drone-git /bin/
ADD release/linux/amd64/setup_ssh /bin/

ENTRYPOINT ["/bin/drone-git"]
