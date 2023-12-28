plugins {
	java
	id("org.springframework.boot") version "3.2.1"
	id("io.spring.dependency-management") version "1.1.4"
}

group = "com.phoenix"
version = "0.0.1-SNAPSHOT"

java {
	sourceCompatibility = JavaVersion.VERSION_17
}

repositories {
	mavenCentral()
}

dependencies {
	implementation("org.springframework.boot:spring-boot-starter-parent:3.2.1")
	implementation("org.springframework.boot:spring-boot-starter-web")
	implementation("org.springframework.boot:spring-boot-starter-actuator")
	implementation("org.springframework.boot:spring-boot-starter-data-mongodb")
	implementation("org.mapstruct:mapstruct:1.5.5.Final")
	implementation("org.springframework.boot:spring-boot-devtools:3.2.1")
	implementation("org.springframework.cloud:spring-cloud-openfeign-core:4.1.0")
	testImplementation("org.springframework.boot:spring-boot-starter-test")
	implementation("org.apache.tomcat.embed:tomcat-embed-jasper")
	
	
	implementation("javax.servlet:javax.servlet-api:3.0.1")
	
	implementation("jakarta.servlet.jsp.jstl:jakarta.servlet.jsp.jstl-api:2.0.0")
	
	implementation("org.glassfish.web:jakarta.servlet.jsp.jstl:2.0.0")

	implementation("com.fasterxml.jackson.core:jackson-databind")

	compileOnly ("org.projectlombok:lombok")
	annotationProcessor ("org.projectlombok:lombok")
}

tasks.withType<Test> {
	useJUnitPlatform()
}
