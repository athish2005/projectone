# -----------------------------
# Stage 1: Build JAR
# -----------------------------
FROM maven:3.9.5-eclipse-temurin-17 AS build

WORKDIR /app

# Copy Maven files first for caching
COPY pom.xml .
COPY src ./src

# Build JAR
RUN mvn clean package -DskipTests

# -----------------------------
# Stage 2: Run JAR
# -----------------------------
FROM openjdk:17-jdk-slim

WORKDIR /app

# Copy built JAR from previous stage
COPY --from=build /app/target/projectone-0.0.1-SNAPSHOT.jar app.jar

# Render sets the PORT environment variable automatically
EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
