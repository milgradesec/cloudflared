VERSION:=2021.9.1

all: 
	docker buildx build . -f build.Dockerfile \
		--build-arg=CLOUDFLARED_VERSION=$(VERSION) \
		--platform linux/arm64 \
		--tag ghcr.io/milgradesec/cloudflared:$(VERSION) \
		--tag ghcr.io/milgradesec/cloudflared:latest \
		--push
