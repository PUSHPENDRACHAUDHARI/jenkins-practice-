FROM eclipse-temurin:17-jdk-jammy

WORKDIR /app

# Install Maven
RUN apt-get update && apt-get install -y maven

# Copy source code
COPY sales /app/sales

WORKDIR /app/sales

# Build the application
RUN mvn clean package -DskipTests

EXPOSE 8080

CMD ["java", "-jar", "target/sales-erp.jar"]
