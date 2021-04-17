FROM ubuntu
RUN cat /etc/os-release > ubuntuone

FROM alpine
COPY --from=0 /ubuntuone /
CMD cat ubuntuone && echo "" && cat /etc/os-release
