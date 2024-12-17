IMAGE ?= docker.io/apecloud/percona-xtrabackup
PUSH ?= false
build-xtrabackup-2.4:
	docker buildx build ./percona-xtrabackup-2.4 --platform linux/amd64,linux/arm64  --file ./percona-xtrabackup-2.4/Dockerfile -t ${IMAGE}:2.4 --push

build-xtrabackup-8.0:
	docker buildx build ./percona-xtrabackup-8.0 --platform linux/amd64,linux/arm64  --file ./percona-xtrabackup-8.0/Dockerfile -t ${IMAGE}:8.0 --push

build-xtrabackup-8.4:
	docker buildx build ./percona-xtrabackup-8.x --platform linux/amd64,linux/arm64  --file ./percona-xtrabackup-8.x/Dockerfile -t ${IMAGE}:8.4 --push
