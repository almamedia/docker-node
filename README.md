[![](https://images.microbadger.com/badges/version/conmio/node.svg)](https://microbadger.com/images/conmio/node "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/conmio/node.svg)](https://microbadger.com/images/conmio/node "Get your own image badge on microbadger.com")
![](https://img.shields.io/docker/automated/conmio/serverless.svg)
![](https://img.shields.io/docker/build/conmio/serverless.svg)

#### Running node.js script:
```
docker run --rm -it \
 -e LOCAL_USER_ID=`id -u $USER`\
 -v ~/my_local_folder:/home/user/project \
 -w /home/user/project \
  conmio/node node script.js
 ```
---

When LOCAL_USER_ID is passed to container, files written to volumes from within the container will be owned by that user.
