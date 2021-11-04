VERSION:=2021.11.0

all: 
	docker --log-level=debug buildx build . \
		-f build.Dockerfile \
		--build-arg=CLOUDFLARED_VERSION=$(VERSION) \
		--platform linux/arm64 \
		--tag ghcr.io/milgradesec/cloudflared:$(VERSION) \
		--tag ghcr.io/milgradesec/cloudflared:latest \
		--tag milgradesec/cloudflared:$(VERSION) \
		--tag milgradesec/cloudflared:latest \
		--push
