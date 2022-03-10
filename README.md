# Script that allows to run multiple container of [ddosify](https://github.com/ddosify/ddosify)

## Dependencies

Install [docker](https://docs.docker.com/engine/install/). This is needed to run containers

Get ddosify image
```bash
docker image pull ddosify/ddosify
```

## Usage

Make scripts executable
```bash
chmod +x bomber.sh
chmod +x stop_bomber.sh
```

Example
```bash
./bomber -t bomber.com -p HTTP -c 10
```

| Flag | Description | Type |
| ---- | ----------- | ---- |
| `-t` | Target site URL | `string` |
| `-p` | Protocol: HTTP or HTTPS | `string` |
| `-c` | Count of docker instances | `int` |

Stop all containers
```bash
./stop_bomber.sh
```