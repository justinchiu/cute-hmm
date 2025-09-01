# If using sfcompute, make sure to set the build context to not use k8s
docker buildx build --platform linux/amd64 --push -t justintchiu/cute_hmm .
