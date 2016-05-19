FROM progrium/buildstep

ADD run.sh /run.sh
RUN chmod +x /run.sh

ONBUILD ADD . /app
ONBUILD RUN /build/builder

ENTRYPOINT ["/run.sh"]
