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
    <a href="https://docs.adshares.net/ads/">Docs</a>
  </p>
</p>

<br>

Basic tools for maintenance an ADS blockchain node.

## Getting Started

Several quick start options are available:

### Release version (recommended)

```
sudo add-apt-repository ppa:adshares/releases
sudo apt-get update
sudo install ads-tools
```

### Snapshot version

```
sudo add-apt-repository ppa:adshares/snapshots
sudo apt-get update
sudo install ads-tools
```

### Install from Source Code

```
sudo apt-get install python
git clone https://github.com/adshares/ads-tools.git
cd ads-tools
```

## Requirements

### JSON-RPC server

```
sudo apt install python-pip
pip install flask flask_jsonrpc waitress requests
```

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

**!!! WARNING Private key will be stored in plain text in file `$WORKING_DIR/key/key.txt` !!!**

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
usage: ads-json-rpc [-h] [--port PORT] [--host HOST] [--ads ADS] [-f FLIMIT]
                    [-i ILIMIT] [-d] [-w WORKING_DIR] [-t TRANSACTIONS_DIR]
                    [-a ACCOUNTS_DIR]

Run JSON-RPC proxy server to ADS client

optional arguments:
  -h, --help            show this help message and exit
  --port PORT           Server port
  --host HOST           Server listening interface
  --ads ADS             ADS client
  -f FLIMIT, --flimit FLIMIT
                        Minimal creation interval of free account in seconds
  -i ILIMIT, --ilimit ILIMIT
                        Minimal creation interval of free account from the
                        same IP address in seconds
  -d, --debug           Debug mode
  -w WORKING_DIR, --working-dir WORKING_DIR
                        Path to ads working directory
  -t TRANSACTIONS_DIR, --transactions-dir TRANSACTIONS_DIR
                        Path to ads working directory for transactions
  -a ACCOUNTS_DIR, --accounts-dir ACCOUNTS_DIR
                        Path to ads working directories for creating free
                        accounts
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
