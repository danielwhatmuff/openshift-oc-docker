FROM google/debian:wheezy

MAINTAINER "Daniel Whatmuff" <danielwhatmuff@gmail.com>

ENV OS_CLI_VERSION v1.1.3
ENV OS_TAG cffae05

RUN apt-get update -y && \
    apt-get install --no-install-recommends -y -q curl ca-certificates && \
    curl -s -L https://github.com/openshift/origin/releases/download/${OS_CLI_VERSION}/openshift-origin-client-tools-${OS_CLI_VERSION}-${OS_TAG}-linux-64bit.tar.gz -o /tmp/oc.tar.gz && \
    tar zxvf /tmp/oc.tar.gz -C /tmp/ && \ 
    cp /tmp/openshift-origin-client-tools-${OS_CLI_VERSION}-${OS_TAG}-linux-64bit/oc /usr/bin/ && \
    oc version

CMD ["oc"]
