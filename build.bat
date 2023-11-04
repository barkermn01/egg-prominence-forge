@echo off
if [%1] == [] GOTO exit1

docker buildx build --platform linux/amd64,linux/arm64 -t ghcr.io/barkermn01/prominence-forge:%1 --push .
GOTO exitSuccess

:exit1
echo You must supply a valid tag version E.G latest
GOTO end

:exitSuccess
echo Packages has been successfully pushed
GOTO end

:end