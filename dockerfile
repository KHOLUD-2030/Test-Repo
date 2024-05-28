FROM openjdk:latest

WORKDIR /app

COPY src/ .

RUN javac CarTest.java Car.java App.java

CMD ["java", "App"]
