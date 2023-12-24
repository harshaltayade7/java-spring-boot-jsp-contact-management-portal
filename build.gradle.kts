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
	implementation("org.springframework.boot:spring-boot-starter-web")
	testImplementation("org.springframework.boot:spring-boot-starter-test")
	implementation("org.apache.tomcat.embed:tomcat-embed-jasper")
	
	
	implementation("javax.servlet:javax.servlet-api:3.0.1")
	
	implementation("jakarta.servlet.jsp.jstl:jakarta.servlet.jsp.jstl-api:2.0.0")
	
	implementation("org.glassfish.web:jakarta.servlet.jsp.jstl:2.0.0")
}

tasks.withType<Test> {
	useJUnitPlatform()
}
