BIN=kafka-to-slack
IMAGE=dailyhotel/$(BIN)

image: 
	docker build -t $(IMAGE):latest .
	
deploy: image
	docker push $(IMAGE):latest
