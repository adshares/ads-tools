# ADS Toolbox

Basic tools for maintenance an ADS blockchain node.

## Getting Started

### Installing

#### Release version (recommended)

```
sudo add-apt-repository ppa:adshares/releases
sudo apt-get update
sudo install ads-tools
```

#### Snapshot version

```
sudo add-apt-repository ppa:adshares/snapshots
sudo apt-get update
sudo install ads-tools
```

#### Install from Source Code

```
sudo install realpath, python
git clone https://github.com/adshares/ads-tools.git
cd ads-tools
```

## Usage

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
