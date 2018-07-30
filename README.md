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
sudo install realpath, python-minimal
git clone https://github.com/adshares/ads-tools.git
cd ads-tools/scripts
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

* **Adam Włodarkiewicz** - _programmer_ - [awlodarkiewicz](https://github.com/awlodarkiewicz)
* **Maciej Pilarczyk** - _programmer_ - [m-pilarczyk](https://github.com/m-pilarczyk)

See also the list of [contributors](https://github.com/adshares/ads-tools/graphs/contributors) who participated in this 
project.

## License ![CC BY-ND](https://mirrors.creativecommons.org/presskit/buttons/80x15/svg/by-nd.svg "CC BY-ND 4.0")

This work is licensed under the Creative Commons Attribution-NoDerivatives 4.0 International License. To view a copy of 
this license, visit http://creativecommons.org/licenses/by-nd/4.0/ or send a letter to Creative Commons, PO Box 1866, 
Mountain View, CA 94042, USA.
 
See the [LICENSE](LICENSE.txt) file for details.