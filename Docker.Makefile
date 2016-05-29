APPNAME=graphite

build:
	docker build -t $(APPNAME) .

run:
	docker run -d \
	--name=graphite \
	-p 8080:80 \
	-p 2003:2003 \
	-e SERVICE_NAME=$(APPNAME) \
	-v /opt/graphite/storage/whisper:/opt/graphite/storage/whisper \
	$(APPNAME)

stop:
	docker stop $(APPNAME) || exit 0

clean: stop
	docker rm -v $(APPNAME) || exit 0

deploy: build clean run
 
