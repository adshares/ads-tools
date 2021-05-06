# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.5.0] - 2021-05-06
### Added
- [JSON-RPC] Wrapped ADS support

## [1.4.0] - 2021-04-20
### Added
- [JSON-RPC] Finding accounts support
- [MONITOR] JSON with all metrics

## [1.3.2] - 2019-02-25
### Added
- [JSON-RPC] Human friendly error messages
- [JSON-RPC] Support for `type` and `address` arguments in `get_log` method
### Changed
- [JSON-RPC] Unprotect `get_log` method

## [1.3.1] - 2019-01-31
### Added
- [JSON-RPC] Multiple nodes with free accounts support

## [1.3.0] - 2019-01-09
### Added
- [JSON-RPC] Free accounts support
- [JSON-RPC] ADS client server argument
- [JSON-RPC] Behave tests
### Changed
- [JSON-RPC] Method `send_one` takes `amount` as String
### Fixed
- [JSON-RPC] Protect 'get_log' method
- [JSON-RPC] Typo in `get_vipkeys` method name
- [JSON-RPC] Method `send_many` takes `wires` as Object instead of array
- [JSON-RPC] Method `(un)set_node_status` takes `node` as Integer

## [1.2.1] - 2018-12-30
### Fixed
- [JSON-RPC] _get_account_ address parameter

## [1.2.0] - 2018-12-30
### Added
- [JSON-RPC] Proxy server
- [JSON-RPC] Read-only mode
- [JSON-RPC] All commands support

## [1.1.0] - 2018-10-30
### Added
- [SERVICE] Start from backup
- [SERVICE] Fast sync start

### Changed
- [SERVICE] Genesis file can only be used as an aid for configuration

### Removed
- [SERVICE] Start from genesis file

## [1.0.2] - 2018-10-08
### Fixed
- [SERVICE] Converting a secret key into a public key

## [1.0.1] - 2018-09-20
### Changed
- [MONITOR] Log level support
- [SERVICE] Improve log rotation support

## [1.0.0] - 2018-08-24
### Added
- [SERVICE] Hostname validation (only ipv4 allowed)
- [MONITOR] Support for database sync in monitor

### Changed
- [MONITOR] Return errors' codes in status monitor
- [MONITOR] Print errors on stderr
- [MONITOR] Include peers in command status
- [MONITOR] Checking node configuration in continuous mode

### Fixed
- [MONITOR] Support for new lines in stderr

## [0.0.5] - 2018-08-13
### Added
- [SERVICE] Validation of node identifier (4 character hex)
- [SERVICE] Wait before checking and reporting node start

### Changed
- [MONITOR] Support for not configured and not started node in status
- [SERVICE] Refactoring for SONAR and reduced complexity
- [SERVICE] Fix naming to convention
- [SERVICE] More (re)startup options automatically detected and handled

## [0.0.4] - 2018-08-11
### Added
- [MONITOR] Network's start countdown in status
- [SERVICE] Cleaning previous configuration

### Changed
- [SERVICE] Force flag in configuration

## [0.0.3] - 2018-08-10
### Added
- [SERVICE] Support for fast sync without history
- [SERVICE] More explicit messages

### Changed
- [SERVICE] Genesis file saving (no modifications)
- [SERVICE] Refactoring for clarity

### Removed
- [MONITOR] Invalid comment

### Fixed
- [SERVICE] Fixed wrong format for svid in options.cfg [#2]
- [MONITOR] Removed `realpath` usage [#1]

## [0.0.2] - 2018-08-08
### Added
- One daemon running simultaneously
- Status action
- Error handling
- Contributing
- Issue templates

### Changed
- Rebuild start/stop

## [0.0.1] - 2018-07-27
### Added
- ADS Monitor tool
- ADS Service tool
- Changelog
- License
- Readme

[Unreleased]: https://github.com/adshares/ads-tools/compare/v1.5.0...HEAD

[1.5.0]: https://github.com/adshares/ads-tools/compare/v1.4.0...v1.5.0
[1.4.0]: https://github.com/adshares/ads-tools/compare/v1.3.2...v1.4.0
[1.3.2]: https://github.com/adshares/ads-tools/compare/v1.3.1...v1.3.2
[1.3.1]: https://github.com/adshares/ads-tools/compare/v1.3.0...v1.3.1
[1.3.0]: https://github.com/adshares/ads-tools/compare/v1.2.1...v1.3.0
[1.2.1]: https://github.com/adshares/ads-tools/compare/v1.2.0...v1.2.1
[1.2.0]: https://github.com/adshares/ads-tools/compare/v1.1.0...v1.2.0
[1.1.0]: https://github.com/adshares/ads-tools/compare/v1.0.2...v1.1.0
[1.0.2]: https://github.com/adshares/ads-tools/compare/v1.0.1...v1.0.2
[1.0.1]: https://github.com/adshares/ads-tools/compare/v1.0.0...v1.0.1
[1.0.0]: https://github.com/adshares/ads-tools/compare/v0.0.5...v1.0.0
[0.0.5]: https://github.com/adshares/ads-tools/compare/v0.0.4...v0.0.5
[0.0.4]: https://github.com/adshares/ads-tools/compare/v0.0.3...v0.0.4
[0.0.3]: https://github.com/adshares/ads-tools/compare/v0.0.2...v0.0.3
[0.0.2]: https://github.com/adshares/ads-tools/compare/v0.0.1...v0.0.2
[0.0.1]: https://github.com/adshares/ads-tools/releases/tag/v0.0.1

[#1]: https://github.com/adshares/ads-tools/issues/1
[#2]: https://github.com/adshares/ads-tools/issues/2
