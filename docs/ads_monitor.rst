ADS monitor
===========
Usage
  ads_monitor [options] <command>

Commands
  status                   checks if the node is alive
  tps                      transactions per second
  txs                      the number of awaiting transactions
  peers                    the number of active peers
  conns                    the number of currently open connections

Options
  -w, --working-dir
   <DIR>  working directory
  -e, --stderr-path
   <FILE> path to STDERR

  -v, --verbose            verbose mode
  -c, --continuous         continuous monitoring
  -h, --help               display this help and exit


Notes
-----
This tool is meant to be used by monitoring software, for example Zabbix.
