
Running node.js script:
```
docker run --rm -it \
 -e LOCAL_USER_ID=`id -u $USER`\
 -v ~/my_local_folder:/home/user/project \
 -w /home/user/project \
  conmio/node node script.js
 ```

When LOCAL_USER_ID is passed to container, files written to volumes from within the container will be owned by that user.
