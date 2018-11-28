<p align="center">
  <a href="https://adshares.net/">
    <img src="https://adshares.net/logos/ads.svg" alt="Adshares" width=100 height=100>
  </a>
  <h3 align="center"><small>ADS Toolbox</small></h3>
  <p align="center">
    <a href="https://github.com/adshares/ads-tools/issues/new?template=bug_report.md&labels=Bug">Report bug</a>
    ·
    <a href="https://github.com/adshares/ads-tools/issues/new?template=feature_request.md&labels=New%20Feature">Request feature</a>
    ·
    <a href="https://github.com/adshares/ads-tools/wiki">Wiki</a>
  </p>
</p>

<br>

Basic tools for maintenance an ADS blockchain node.

## Getting Started

Several quick start options are available:

- Install from Ubuntu PPA (recommended):
  ```
  sudo add-apt-repository ppa:adshares/releases
  sudo apt-get update
  sudo install ads-tools
  ```
- [Download the latest release](https://github.com/adshares/ads-tools/releases/latest)
- Clone the repo: `git clone https://github.com/adshares/ads-tools.git`

## Usage

### ADS Service

```
usage: ads-service [-h] [-w WORKING_DIR] [-g GENESIS_URL] [-f]
                   {start,stop,restart,configure,status}

Maintenance service for the ADS network.

positional arguments:
  {start,stop,restart,configure,status}

optional arguments:
  -h, --help            show this help message and exit
  -w WORKING_DIR, --working-dir WORKING_DIR
                        working directory (default "~/.adsd")
  -g GENESIS_URL, --genesis-url GENESIS_URL
                        URL to genesis file (default official genesis)
  -f, --force
```

#### Examples

##### Configuration

```bash
ads-service configure
```

The interactive `ads-service configure` will walk you through the configuration. Some of the steps can be skipped by accepting the default option. For the configuration process to be successful, you'll need to provide:

* private key
* node identifier
* node interface (ip)

##### Starting the node

```bash
ads-service start
ads-service status
```

### ADS Monitor

```
ads-monitor [options] <command>

Commands
  status                   checks if the node is alive
  tps                      transactions per second
  txs                      the number of awaiting transactions
  peers                    the number of active peers
  conns                    the number of currently open connections

Options
  -w, --working-dir <DIR>  working directory
  -e, --stderr-path <FILE> path to STDERR
  -v, --verbose            verbose mode
  -c, --continuous         continuous monitoring
  -h, --help               display this help and exit
```

#### Examples

Continuous checking transactions in block with more info:

```
ads-monitor -vc txs
```

### JSON-RPC server

```
usage: ads-json-rpc [-h] [--port PORT] [--host HOST] [-d] [-w WORKING_DIR]

Run JSON-RPC proxy server to ADS client

optional arguments:
  -h, --help            show this help message and exit
  --port PORT           Server port
  --host HOST           Server listening interface
  -d, --debug           Debug mode
  -w WORKING_DIR, --working-dir WORKING_DIR
                        Path to ads working directory
```

#### Examples

Starting the server on http://127.0.0.1:6868/:

```
ads-json-rpc --host 127.0.0.1 --port 6868
```

## Versioning

We use [Semantic Versioning](https://semver.org/spec/v2.0.0.html) for versioning. For the versions available, see the 
[tags on this repository](https://github.com/adshares/ads-tools/tags).

## Authors

* **[Adam Włodarkiewicz](https://github.com/awlodarkiewicz)** - _python programmer_
* **[Maciej Pilarczyk](https://github.com/m-pilarczyk)** - _bash programmer_

See also the list of [contributors](https://github.com/adshares/ads-tools/graphs/contributors) who participated in this 
project.

## License 

This project is licensed under the GNU General Public License v3.0 - see the [LICENSE](LICENSE) file for details.
