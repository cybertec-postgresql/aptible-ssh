# aptible-ssh

## Environment variables
* `APP_NAME`  
	Name of the Aptible app.
* `LOCAL_PASS`  
	Password that is set for the `root` user.
* `REMOTE_USER`  
	User used for remote SSH relay (ideally shell-less).
* `REMOTE_HOST`  
	Address of SSH relay.
* `REMOTE_PORT`  
	Port that is going to be exposed on the `REMOTE_HOST`.
* `SSH_KEY`  
	Password-less private key that is authorized for login as `REMOTE_USER`.

## Aptible configuration
```
aptible config:set --app "${APP_NAME}" \
	"LOCAL_PASS=${LOCAL_PASS}" \
	"REMOTE_USER=${REMOTE_USER}" \
	"REMOTE_HOST=${REMOTE_HOST}" \
	"REMOTE_PORT=${REMOTE_PORT}" \
	"SSH_KEY=${SSH_KEY}"
```