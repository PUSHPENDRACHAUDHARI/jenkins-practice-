FROM openjdk:17-jdk-slim

WORKDIR /app

# Copy project
COPY sales /app/sales

# Build the application
WORKDIR /app/sales
RUN ./mvnw clean package -DskipTests

# Run the app
EXPOSE 8080
CMD ["java", "-jar", "target/sales-erp.jar"]

