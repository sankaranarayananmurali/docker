FROM openjdk
WORKDIR /app
COPY . /app
RUN javac demo.java
CMD [ "java", "demo" ]
