run:
	./gradlew bootRun

docker-build:
	./gradlew clean build
	docker build -t dashboard-dev --file sbdi/dev.Dockerfile .

docker-run:
	docker run -p 8080:8080 --rm --name dashboard-dev dashboard-dev
