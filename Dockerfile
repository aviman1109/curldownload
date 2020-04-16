FROM alpine
ADD scripts/* /scripts/

ENV PATH=≈${PATH}:/scripts/
RUN apk update && apk upgrade \
&& apk --no-cache add curl \
&& chmod +x /scripts/*

# WORKDIR $DRONE_WORKSPACE
CMD [ "sh" , "/scripts/curltool" ]

