[![](https://images.microbadger.com/badges/version/conmio/node.svg)](https://microbadger.com/images/conmio/node "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/conmio/node.svg)](https://microbadger.com/images/conmio/node "Get your own image badge on microbadger.com")
![](https://img.shields.io/docker/automated/conmio/node.svg)
![](https://img.shields.io/docker/build/conmio/node.svg)

#### Running node.js script:
```
docker run --rm \
 -e LOCAL_USER_ID=`id -u $USER`\
 -v ~/script_folder:/app \
  conmio/node:8-alpine node script.js
 ```
---

When LOCAL_USER_ID is passed to container, files written to volumes from within the container will be owned by that user.
