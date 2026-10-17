import FlagEmojis
import Testing

struct FlagEmojisTests {
	@Test
	func `flag lookup with valid country codes`() {
		// Test uppercase country codes
		#expect(FlagEmojis.flag(for: "US") == "🇺🇸")
		#expect(FlagEmojis.flag(for: "GB") == "🇬🇧")
		#expect(FlagEmojis.flag(for: "JP") == "🇯🇵")

		// Test lowercase country codes
		#expect(FlagEmojis.flag(for: "fr") == "🇫🇷")
		#expect(FlagEmojis.flag(for: "it") == "🇮🇹")
		#expect(FlagEmojis.flag(for: "de") == "🇩🇪")
	}

	@Test
	func `flag lookup with country names`() {
		#expect(FlagEmojis.flag(for: "United States") == "🇺🇸")
		#expect(FlagEmojis.flag(for: "united states") == "🇺🇸")
		#expect(FlagEmojis.flag(for: "Japan") == "🇯🇵")
		#expect(FlagEmojis.flag(for: "Germany") == "🇩🇪")
		#expect(FlagEmojis.flag(for: "United Kingdom") == "🇬🇧")
	}

	@Test
	func `flag lookup with alternative names`() {
		// Test alternative names
		#expect(FlagEmojis.flag(for: "USA") == "🇺🇸")
		#expect(FlagEmojis.flag(for: "UK") == "🇬🇧")

		// Test nationality adjectives
		#expect(FlagEmojis.flag(for: "French") == "🇫🇷")
		#expect(FlagEmojis.flag(for: "Italian") == "🇮🇹")
		#expect(FlagEmojis.flag(for: "American") == "🇺🇸")
		#expect(FlagEmojis.flag(for: "British") == "🇬🇧")
	}

	@Test
	func `flag lookup with commas in name`() {
		// Test countries with comma
		#expect(FlagEmojis.flag(for: "Korea, Republic of") == "🇰🇷")
		#expect(FlagEmojis.flag(for: "Tanzania, United Republic of") == "🇹🇿")

		// Test with differing order
		#expect(FlagEmojis.flag(for: "Republic of Korea") == "🇰🇷")
	}

	@Test
	func `flag lookup with partial names`() {
		// Test partial matching
		#expect(FlagEmojis.flag(for: "States") == nil) // Ambiguous
		#expect(FlagEmojis.flag(for: "Kingdom") == "🇬🇧")
		#expect(FlagEmojis.flag(for: "Zealand") == "🇳🇿")
	}

	@Test
	func `flag lookup with invalid input`() {
		// Test invalid inputs
		#expect(FlagEmojis.flag(for: "") == nil)
		#expect(FlagEmojis.flag(for: "   ") == nil)
		#expect(FlagEmojis.flag(for: "Klingon") == nil)
		#expect(FlagEmojis.flag(for: "XX") == nil)
		#expect(FlagEmojis.flag(for: "England") == nil) // Not in the list
		#expect(FlagEmojis.flag(for: "Republic") == nil) // Ambiguous
	}

	// MARK: - Subscript Tests

	@Test
	func `subscript access`() {
		#expect(FlagEmojis["US"] == "🇺🇸")
		#expect(FlagEmojis["united kingdom"] == "🇬🇧")
		#expect(FlagEmojis["Italian"] == "🇮🇹")
		#expect(FlagEmojis["NonExistentCountry"] == nil)
	}

	// MARK: - Country Code Tests

	@Test
	func `country code lookup`() {
		// Test with country codes
		#expect(FlagEmojis.countryCode(for: "US") == "US")
		#expect(FlagEmojis.countryCode(for: "gb") == "GB")

		// Test with country names
		#expect(FlagEmojis.countryCode(for: "United States") == "US")
		#expect(FlagEmojis.countryCode(for: "france") == "FR")
		#expect(FlagEmojis.countryCode(for: "GERMANY") == "DE")

		// Test with alternative names
		#expect(FlagEmojis.countryCode(for: "USA") == "US")
		#expect(FlagEmojis.countryCode(for: "Swiss") == "CH")

		// Test with non-existent countries
		#expect(FlagEmojis.countryCode(for: "Atlantis") == nil)
		#expect(FlagEmojis.countryCode(for: "") == nil)
	}

	@Test
	func `ambiguous country names`() {
		// This should be nil because "Korea" is ambiguous (North vs South)
		#expect(FlagEmojis.countryCode(for: "Korea") == nil)

		// But these should work
		#expect(FlagEmojis.countryCode(for: "North Korea") == "KP")
		#expect(FlagEmojis.countryCode(for: "South Korea") == "KR")
	}

	// MARK: - Edge Cases

	@Test
	func `whitespace handling`() {
		#expect(FlagEmojis.flag(for: "  United States  ") == "🇺🇸")
		#expect(FlagEmojis.countryCode(for: " FR ") == "FR")
		#expect(FlagEmojis.flag(for: "   ") == nil)
	}

	@Test
	func `case insensitivity`() {
		#expect(FlagEmojis.flag(for: "FRANCE") == "🇫🇷")
		#expect(FlagEmojis.flag(for: "france") == "🇫🇷")
		#expect(FlagEmojis.flag(for: "France") == "🇫🇷")
		#expect(FlagEmojis.flag(for: "FrAnCe") == "🇫🇷")
	}

	@Test
	func `emoji flag construction`() throws {
		// Test that emoji flags are correctly constructed
		// US flag is formed from regional indicator symbols 🇺 (U+1F1FA) and 🇸 (U+1F1F8)
		let usFlag = try #require(FlagEmojis.flag(for: "US"), "US should be valid")

		#expect(usFlag.count == 1)
		let unicodeScalars = Array(usFlag.unicodeScalars)
		#expect(unicodeScalars.count == 2)
		#expect(unicodeScalars[0].value == 0x1F1FA) // 🇺
		#expect(unicodeScalars[1].value == 0x1F1F8) // 🇸
	}
}
