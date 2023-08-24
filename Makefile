run:
	./gradlew bootRun

run-docker:
	docker compose up --detach

release:
	@./sbdi/make-release.sh
