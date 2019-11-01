# server
```shell
docker run --rm nnurphy/wstunnel --server ws://0.0.0.0:8080
```

## nginx
```shell
    location /wstunnel {
	    proxy_read_timeout 1800s;
	    proxy_pass http://127.0.0.1:8080;
	    proxy_http_version 1.1;
	    proxy_set_header        Upgrade             $http_upgrade;
	    proxy_set_header        Connection          "upgrade";
	    proxy_set_header        Host                $host;
	    proxy_set_header        X-Real-IP           $remote_addr;
	    proxy_set_header        X-Forwarded-For     $proxy_add_x_forwarded_for;
	    proxy_set_header        X-Forwarded-Proto   $scheme;
    }
```