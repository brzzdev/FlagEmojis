swiftformat_base := "/tmp/swiftformat-base"

[private]
fetch-swiftformat-config:
	curl -sL https://raw.githubusercontent.com/brzzdev/Configs/main/Configs/swiftformat -o {{ swiftformat_base }}

# Format code with SwiftFormat
format: fetch-swiftformat-config
	mint run swiftformat . --base-config {{ swiftformat_base }}

[private]
format-staged: fetch-swiftformat-config
	./.git-format-staged --formatter "$(mint which swiftformat 2>/dev/null | tail -1) stdin --stdinpath '{}' --base-config {{ swiftformat_base }}" "*.swift"

# Place pre-commit hook locally
pre-commit:
	cp .scripts/pre-commit .git/hooks/pre-commit
	chmod +x .git/hooks/pre-commit

# Run tests
test:
	swift test

# Install developer tools
tools:
	mint bootstrap
	just pre-commit
