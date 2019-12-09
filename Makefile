build:
	docker build -t pid/curl-openssl-builder-android .

copy:
	mkdir -p $(PWD)/output
	docker run -it --rm -v $(PWD)/output:/app/dist pid/curl-openssl-builder-android cp -r ../output/android ../dist/

bash:
	docker run -it --rm pid/curl-openssl-builder-android bash
