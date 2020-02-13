# Base Web Nginx

Base Image For Web With Nginx 1.16.1-alpine

## Config

- **Web Root**  : /var/www/html
- **Web Port**  : 80
- **Flag Path** : /flag

You can set your flag path by modify `/_files/flag.sh`

```bash
#!/bin/sh

# echo $FLAG > /flag
echo $FLAG > /for/yout/path/file

export FLAG=not_flag
FLAG=not_flag

rm -f /flag.sh
```