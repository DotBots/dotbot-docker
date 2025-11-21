## Dockerized DotBot testbed

This repository contains a simple Docker compose configuration that allows to
easily run a DotBot testbed on a server.

The compose configuration exposes 3 services:
- The [SwarmIT](https://github.com/DotBots/swarmit) dashboard: a convenient web
interface that allows to manage all robots on the testbed. For example it can
start, stop and flash an application remotely on the robots;
- [PyDotBot](https://github.com/DotBots/PyDotBot): a web based user application
that allows to control the robots. The UI displays the robots position in real
time and provide some controls to move the robots and change their RGB LED;
- [mosquitto](https://mosquitto.org/): runs an Eclipse Mosquitto MQTT broker
that is used to exchanges mari packets between gateways and the SwarmIT dashboard.

### Setup

You need Docker and Docker compose to be installed on your computer. Please
the follow the installation instruction
[here (Docker)](https://docs.docker.com/engine/install/) and
[there (Docker Compose)](https://docs.docker.com/compose/install/).

### Running the testbed backend

Just run the following command:

```
docker compose up
```

Once running, the SwarmIT dashboard is available at http://localhost:8000, the
PyDotBot main interface is available at http://localhost:8000/PyDotBot and the
pin QR code is available at http://localhost:8000/pin

### Advanced configuration

By default, the SwarmIT and PyDotBot use the internal mosquitto broker but if
you can to use a public broker, edit the `CLOUD_MQTT_HOST` and `CLOUD_MQTT_PORT`
parameters in the `.env` file and re-run docker compose.
