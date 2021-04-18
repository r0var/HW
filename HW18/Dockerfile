FROM ubuntu AS one
RUN cat /etc/os-release > ubuntuone

FROM alpine
COPY --from=one /ubuntuone /
CMD cat ubuntuone && echo "" && cat /etc/os-release
