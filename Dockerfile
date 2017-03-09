FROM danielwhatmuff/alpine-glibc-docker

MAINTAINER "Daniel Whatmuff" <danielwhatmuff@gmail.com>

ENV OS_CLI_VERSION v1.4.1
ENV OS_TAG 3f9807a

RUN apk-install curl ca-certificates && \
    curl -s -L https://github.com/openshift/origin/releases/download/${OS_CLI_VERSION}/openshift-origin-client-tools-${OS_CLI_VERSION}-${OS_TAG}-linux-64bit.tar.gz -o /tmp/oc.tar.gz && \
    tar zxvf /tmp/oc.tar.gz -C /tmp/ && \ 
    mv /tmp/openshift-origin-client-tools-${OS_CLI_VERSION}-${OS_TAG}-linux-64bit/oc /usr/bin/ && \
    rm -rf /tmp/oc.tar.gz /tmp/openshift-origin-client-tools-${OS_CLI_VERSION}-${OS_TAG}-linux-64bit/ && \
    rm -rf /root/.cache /var/cache/apk/ && \
    oc version

CMD ["oc"]
