build:
	docker build --build-arg BUILD_FROM="homeassistant/amd64-base:latest" \
	-t local/my-test-addon .

run: build
	docker run --rm -v /tmp/my_test_data:/data local/my-test-addon