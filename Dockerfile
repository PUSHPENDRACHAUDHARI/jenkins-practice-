FROM eclipse-temurin:17-jdk-jammy

WORKDIR /app

COPY sales /app/sales

WORKDIR /app/sales

RUN chmod +x mvnw && ./mvnw clean package -DskipTests

EXPOSE 8080

CMD ["java", "-jar", "target/sales-erp.jar"]
