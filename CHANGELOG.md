# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]
### Added
- Hostname validation (only ipv4 allowed)

### Changed
- Return errors' codes in monitor

### Fixed
- Support for empty lines in stderr

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

[Unreleased]: https://github.com/adshares/ads-tools/compare/v0.0.5...HEAD

[0.0.5]: https://github.com/adshares/ads-tools/compare/v0.0.4...v0.0.5
[0.0.4]: https://github.com/adshares/ads-tools/compare/v0.0.3...v0.0.4
[0.0.3]: https://github.com/adshares/ads-tools/compare/v0.0.2...v0.0.3
[0.0.2]: https://github.com/adshares/ads-tools/compare/v0.0.1...v0.0.2
[0.0.1]: https://github.com/adshares/ads-tools/releases/tag/v0.0.1

[#1]: https://github.com/adshares/ads-tools/issues/1
[#2]: https://github.com/adshares/ads-tools/issues/2