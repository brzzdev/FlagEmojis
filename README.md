# FlagEmojis

[![CI](https://github.com/brzzdev/FlagEmojis/workflows/CI/badge.svg)](https://github.com/brzzdev/FlagEmojis/actions?query=workflow%3ACI)

FlagEmojis is a single-file Swift library for matching country code/names to their respective emojis

## API

```swift
public static func flag(for country: String) -> String?
```

```swift
public static subscript(country: String) -> String?
```

```swift
public static func countryCode(for country: String) -> String?
```

## Example Usage

```swift
FlagEmojis.flag(for: "italy") // 🇮🇹
FlagEmojis["United Kingdom"] // 🇬🇧
FlagEmojis["States"] // nil (Too ambiguous)
FlagEmojis.countryCode(for: "Germany") // DE
```

## Installation

### SPM

#### Targets

1. From the **File** menu, select **Add Package Dependencies...**
2. Enter "https://github.com/brzzdev/FlagEmojis" into the package
   repository URL text field

#### Package.swift

```
.package(
	url: "https://github.com/brzzdev/FlagEmojis",
	from: "1.0.0"
),
```

### Manual

Add the file to your project, or copy and paste to your hearts desire

## Credit

Heavily based on [SwiftFlags](https://github.com/andreabusi/SwiftFlags), which itself credits [country-emoji](https://github.com/meeDamian/country-emoji/blob/master/src/lib.js), and [flag-emoji-from-country-code](https://github.com/bendodson/flag-emoji-from-country-code) 💜
