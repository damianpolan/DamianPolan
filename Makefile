build:
	docker build -t gcr.io/damianpolan/web:v1.0

run:
	docker run -p 8000:8000 gcr.io/damianpolan/web:v1.0

