# apk-mitm-docker

apk-mitm, packaged as a docker image

## Usage

```bash
docker run \
--volume /path/to/apks:/output captn3m0/apk-mitm /output/file.apk
```

Once apk-mitm finishes running, the patched APK file will be at `/path/to/apks/file-patched.apk`


## LICENSE

Adopts the same license as apk-mitm, which is MIT. Note that apktool, also distributed in the image
is under the Apache-2.0 license, which is included in the apktool jar file at /usr/local/bin/apktool.jar
in the docker image.