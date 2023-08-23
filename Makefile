run:
	./gradlew bootRun

build-docker:
	./gradlew clean war
	docker build -t dashboard-dev --file sbdi/dev.Dockerfile .

run-docker:
	docker run -p 8080:8080 --rm --name dashboard-dev dashboard-dev
