FROM openjdk:8

ARG VERSION=9.1.0-full

EXPOSE 1979

# Get VocBench3
RUN wget -nv https://bitbucket.org/art-uniroma2/vocbench3/downloads/vocbench3-${VERSION}.zip
RUN unzip ./vocbench3-${VERSION}.zip
RUN rm ./vocbench3-${VERSION}.zip

# Allow execution
RUN cd semanticturkey* && chmod +x bin/karaf

CMD cd semanticturkey* && ./bin/karaf run