# secDevLabs Insecure Go Project

[secDevLabs](https://github.com/globocom/secDevLabs)' [`owasp-top10-2021-apps/a7/insecure-go-project`](https://github.com/globocom/secDevLabs/tree/10be438496e928c66567749f0aaf0bb976052bc9/owasp-top10-2021-apps/a7/insecure-go-project) app, by Globo.com and the
secDevLabs contributors: a Go (Echo) API whose MongoDB user and password are hardcoded in its configuration and setup script, an Identification and Authentication Failure. This repository runs it with
[Isoloom](https://www.isoloom.com): [`isoloom.yml`](isoloom.yml) describes the machines, built from
the vendored app folder (see [UPSTREAM.md](UPSTREAM.md)).

| Machine | Service |
| --- | --- |
| api | Insecure Go Project on port 10002 |
| mongodb | MongoDB 4.0.3 on port 27017 |

## Run it

```bash
isoloom generate
isoloom up docker
```

Then check http://localhost:10002/healthcheck. MongoDB answers on localhost:27017. The same spec runs as Docker on a local VM (`docker-vm`), on a cloud VM
(`cloud-docker`) or on Kubernetes. Lab guide: the app's
[README](https://github.com/globocom/secDevLabs/blob/10be438496e928c66567749f0aaf0bb976052bc9/owasp-top10-2021-apps/a7/insecure-go-project/README.md), with the attack narrative and the secDevLabs walkthrough.

Upstream version and commit: [UPSTREAM.md](UPSTREAM.md).

## Licence

BSD-3-Clause, as secDevLabs ([LICENSE](LICENSE)). The third-party software inside the images keeps
its own licence. This application is deliberately vulnerable: keep it isolated.
