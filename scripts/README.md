# scripts

Must load .env file before running the scripts.

The control.sh file is the main script to run the other scripts.

It will load .env file before running the scripts.

If you don't have it, create a .env file in the root directory of the project and add the following:

```shell
# Environemtn variables for the project
EV_ROOT_PATH=$(cd "$(dirname "$0")" && pwd)
EV_SECRET_KEY="SHA256"

# Engine Settings
EV_ENGINE_SERVER="paper"
EV_ENGINE_PROXY="velocity"
EV_VERSION_SERVER="1.21.1"
EV_VERSION_PROXY="3.4.0-SNAPSHOT"
```
