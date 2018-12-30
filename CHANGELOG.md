# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [1.2.0] - 2018-12-30
### Added
- JSON-RPC proxy server
- JSON-RPC read-only mode
- JSON-RPC all commands support

## [1.1.0] - 2018-10-30
### Added
- Start from backup
- Fast sync start

### Changed
- Genesis file can only be used as an aid for configuration

### Removed
- Start from genesis file

## [1.0.2] - 2018-10-08
### Fixed
- Converting a secret key into a public key

## [1.0.1] - 2018-09-20
### Changed
- Log level support
- Improve log rotation support

## [1.0.0] - 2018-08-24
### Added
- Hostname validation (only ipv4 allowed)
- Support for database sync in monitor

### Changed
- Return errors' codes in status monitor
- Print errors on stderr
- Include peers in command status
- Checking node configuration in continuous mode

### Fixed
- Support for new lines in stderr

## [0.0.5] - 2018-08-13
### Added
- Validation of node identifier (4 character hex)
- Wait before checking and reporting node start

### Changed
- Support for not configured and not started node in status
- Refactoring for SONAR and reduced complexity
- Fix naming to convention
- More (re)startup options automatically detected and handled

## [0.0.4] - 2018-08-11
### Added
- Network's start countdown in status
- Cleaning previous configuration

### Changed
- Force flag in configuration

## [0.0.3] - 2018-08-10
### Added
- Support for fast sync without history
- More explicit messages

### Changed
- Genesis file saving (no modifications)
- Refactoring for clarity

### Removed
- Invalid comment

### Fixed
- Fixed wrong format for svid in options.cfg [#2]
- Removed `realpath` usage [#1]

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

[Unreleased]: https://github.com/adshares/ads-tools/compare/v1.2.0...HEAD

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
