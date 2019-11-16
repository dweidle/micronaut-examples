FROM oracle/graalvm-ce:19.2.1 as graalvm
COPY . /home/app/micronaut-data-jdbc
WORKDIR /home/app/micronaut-data-jdbc
RUN gu install native-image
RUN native-image --no-server -cp build/libs/micronaut-data-jdbc-*-all.jar

FROM frolvlad/alpine-glibc
EXPOSE 8080
COPY --from=graalvm /home/app/micronaut-data-jdbc .
ENTRYPOINT ["./micronaut-data-jdbc"]
