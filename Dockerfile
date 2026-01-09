# 1. 베이스 이미지 설정 (JDK 17 기준)
FROM openjdk:17-jdk-slim

# 2. 작업 디렉토리 생성
WORKDIR /app

# 3. 빌드된 JAR 파일을 컨테이너 내부로 복사
# build/libs/ 폴더 안에 생성된 jar 파일을 app.jar라는 이름으로 복사합니다.
COPY build/libs/*.jar app.jar

# 4. 컨테이너가 실행될 때 자바 앱 실행
ENTRYPOINT ["java", "-jar", "app.jar"]