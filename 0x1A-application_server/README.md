# 0x1A. Application server

## [2-app_server-nginx_config](./2-app_server-nginx_config)
Building on your work in the previous tasks, configure `Nginx` to serve your page from the route `/airbnb-onepage/`

Requirements:
- `Nginx` must serve this page both locally and on its public IP on port `80`.
- `Nginx` should proxy requests to the process listening on port `5000`.
- Include your `Nginx` config file as `2-app_server-nginx_config`.

Notes:
- In order to test this you’ll have to spin up either your production or development application server (listening on port `5000`)
- In an actual production environment the application server will be configured to start upon startup in a system initialization script. This will be covered in the advanced tasks.
- You will probably need to `reboot` your server (by using the command `$ sudo reboot`) to have Nginx publicly accessible


