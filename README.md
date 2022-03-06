# Script that allows to run multiple container of ddosify

## Dependencies

Install [docker](https://docs.docker.com/engine/install/). This is needed to run containers

Get ddosify image
```bash
docker image pull ddosify/ddosify
```

## Usage

Make scripts executable
```
chmod +x bomber.sh
chmod +x stop_bomber.sh
```

Example
```
./bomber -t bomber.com -p 443 -c 10
```

| Flag | Description | Type |
| ---- | ----------- | ---- |
| `-t` | Target site URL | `string` |
| `-p` | Protocol - HTTP or HTTPS | `string` |
| `-c` | Count of docker instances | `int` |