// MIT License
//
// Copyright (c) 2025 brzzdev
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import Foundation

public enum FlagEmojis {
	private static let countries = [
		"AD": ["Andorra", "Andorran"],
		"AE": ["Emirati", "UAE", "United Arab Emirates"],
		"AF": ["Afghan", "Afghanistan"],
		"AG": ["Antigua and Barbuda", "Antiguan, Barbudan"],
		"AI": ["Anguilla", "Anguillian"],
		"AL": ["Albania", "Albanian"],
		"AM": ["Armenia", "Armenian"],
		"AN": ["Netherlands Antilles"],
		"AO": ["Angola", "Angolan"],
		"AQ": ["Antarctica", "Antarctican"],
		"AR": ["Argentina", "Argentine"],
		"AS": ["American Samoa", "American Samoan"],
		"AT": ["Austria", "Austrian"],
		"AU": ["Australia", "Australian"],
		"AW": ["Aruba", "Aruban"],
		"AX": ["Åland Islands", "Ålandish"],
		"AZ": ["Azerbaijan", "Azerbaijani"],
		"BA": ["Bosnia and Herzegovina", "Bosnian, Herzegovinian"],
		"BB": ["Barbados", "Barbadian"],
		"BD": ["Bangladesh", "Bangladeshi"],
		"BE": ["Belgium", "Belgian"],
		"BF": ["Burkina Faso", "Burkinabe"],
		"BG": ["Bulgaria", "Bulgarian"],
		"BH": ["Bahrain", "Bahraini", "Bahrein"],
		"BI": ["Burundi", "Burundian"],
		"BJ": ["Benin", "Beninese"],
		"BM": ["Bermuda", "Bermudian"],
		"BN": ["Brunei Darussalam", "Bruneian"],
		"BO": ["Bolivia", "Bolivian"],
		"BR": ["Brazil", "Brazilian"],
		"BS": ["Bahamas", "Bahamian"],
		"BT": ["Bhutan", "Bhutanese"],
		"BV": ["Bouvet Island"],
		"BW": ["Botswana", "Motswana"],
		"BY": ["Belarus", "Belarusian"],
		"BZ": ["Belize", "Belizean"],
		"CA": ["Canada", "Canadian"],
		"CC": ["Cocos (Keeling) Islands", "Cocos Islander"],
		"CD": ["Congo, The Democratic Republic of the"],
		"CF": ["Central African", "Central African Republic"],
		"CG": ["Congo"],
		"CH": ["Switzerland", "Swiss"],
		"CI": ["Cote D'Ivoire", "Ivorian"],
		"CK": ["Cook Islander", "Cook Islands"],
		"CL": ["Chile", "Chilean"],
		"CM": ["Cameroon", "Cameroonian"],
		"CN": ["China", "Chinese"],
		"CO": ["Colombia", "Colombian"],
		"CR": ["Costa Rica", "Costa Rican"],
		"CU": ["Cuba", "Cuban"],
		"CV": ["Cabo Verde", "Cape Verde", "Cape Verdian"],
		"CX": ["Christmas Island", "Christmas Islander"],
		"CY": ["Cyprus", "Cypriot"],
		"CZ": ["Czech", "Czech Republic", "Czechia"],
		"DE": ["German", "Germany"],
		"DJ": ["Djibouti"],
		"DK": ["Danish", "Denmark"],
		"DM": ["Dominica"],
		"DO": ["Dominican Republic"],
		"DZ": ["Algeria", "Algerian"],
		"EC": ["Ecuador", "Ecuadorean"],
		"EE": ["Estonia", "Estonian"],
		"EG": ["Egypt", "Egyptian"],
		"EH": ["Sahrawi", "Western Sahara"],
		"ER": ["Eritrea", "Eritrean"],
		"ES": ["Spain", "Spanish"],
		"ET": ["Ethiopia", "Ethiopian"],
		"EU": ["European Union"],
		"FI": ["Finland", "Finnish"],
		"FJ": ["Fiji", "Fijian"],
		"FK": ["Falkland Island (Malvinas)", "Falkland Islander"],
		"FM": ["Micronesia, Federated States of", "Micronesian"],
		"FO": ["Faroe Islands", "Faroese"],
		"FR": ["France", "French"],
		"GA": ["Gabon", "Gabonese"],
		"GB": ["British", "Great Britain", "UK", "United Kingdom"],
		"GD": ["Grenada", "Grenadian"],
		"GE": ["Georgia", "Georgian"],
		"GF": ["French Guiana", "Guianan"],
		"GG": ["Guernsey"],
		"GH": ["Ghana", "Ghanaian"],
		"GI": ["Gibraltar"],
		"GL": ["Greenland", "Greenlandic"],
		"GM": ["Gambia", "Gambian"],
		"GN": ["Guinea", "Guinean"],
		"GP": ["Guadeloupe", "Guadeloupian"],
		"GQ": ["Equatorial Guinea", "Equatorial Guinean"],
		"GR": ["Greece", "Greek"],
		"GS": ["South Georgia and the South Sandwich Islands", "South Georgian South Sandwich Islander"],
		"GT": ["Guatemala", "Guatemalan"],
		"GU": ["Guam", "Guamanian"],
		"GW": ["Guinea-Bissau", "Guinea-Bissauan"],
		"GY": ["Guyana", "Guyanese"],
		"HK": ["Hong Kong", "Hong Konger"],
		"HM": ["Heard and McDonald Islander", "Heard Island and Mcdonald Islands"],
		"HN": ["Honduras", "Honduran"],
		"HR": ["Croatia", "Croatian"],
		"HT": ["Haiti", "Haitian"],
		"HU": ["Hungary", "Hungarian"],
		"ID": ["Indonesia", "Indonesian"],
		"IE": ["Ireland", "Irish"],
		"IL": ["Israel", "Israeli"],
		"IM": ["Isle of Man", "Manx"],
		"IN": ["India", "Indian"],
		"IO": ["British Indian Ocean Territory"],
		"IQ": ["Iraq", "Iraqi"],
		"IR": ["Iran, Islamic Republic Of", "Iranian"],
		"IS": ["Iceland", "Icelander"],
		"IT": ["Italy", "Italian"],
		"JE": ["Jersey"],
		"JM": ["Jamaica", "Jamaican"],
		"JO": ["Jordan", "Jordanian"],
		"JP": ["Japan", "Japanese"],
		"KE": ["Kenya", "Kenyan"],
		"KG": ["Kirghiz", "Kyrgyzstan"],
		"KH": ["Cambodia", "Cambodian"],
		"KI": ["I-Kiribati", "Kiribati"],
		"KM": ["Comoran", "Comoros"],
		"KN": ["Kittitian or Nevisian", "Saint Kitts and Nevis"],
		"KP": ["DPRK", "Korea, Democratic People's Republic of", "North Korea", "North Korean"],
		"KR": ["Korea, Republic of", "South Korea", "South Korean"],
		"KW": ["Kuwait", "Kuwaiti"],
		"KY": ["Cayman Islands", "Caymanian"],
		"KZ": ["Kazakhstan", "Kazakhstani"],
		"LA": ["Lao People's Democratic Republic", "Laos", "Laotian"],
		"LB": ["Lebanon", "Lebanese"],
		"LC": ["Saint Lucia", "Saint Lucian"],
		"LI": ["Liechtenstein", "Liechtensteiner"],
		"LK": ["Sri Lanka", "Sri Lankan"],
		"LR": ["Liberia", "Liberian"],
		"LS": ["Lesotho", "Mosotho"],
		"LT": ["Lithuania", "Lithuanian"],
		"LU": ["Luxembourg", "Luxembourger"],
		"LV": ["Latvia", "Latvian"],
		"LY": ["Libyan", "Libyan Arab Jamahiriya"],
		"MA": ["Morocco", "Moroccan"],
		"MC": ["Monaco", "Monegasque"],
		"MD": ["Moldova, Republic of", "Moldovan"],
		"ME": ["Montenegro", "Montenegrin"],
		"MG": ["Madagascar", "Malagasy"],
		"MH": ["Marshall Islands", "Marshallese"],
		"MK": ["Macedonia, The Former Yugoslav Republic of", "Macedonian", "North Macedonia, Republic of"],
		"ML": ["Mali", "Malian"],
		"MM": ["Burma", "Burmese", "Myanmar"],
		"MN": ["Mongolia", "Mongolian"],
		"MO": ["Macao", "Macanese", "Macau"],
		"MP": ["Northern Mariana Islands"],
		"MQ": ["Martinique"],
		"MR": ["Mauritania", "Mauritanian"],
		"MS": ["Montserrat", "Montserratian"],
		"MT": ["Malta", "Maltese"],
		"MU": ["Mauritius", "Mauritian"],
		"MV": ["Maldivan", "Maldives"],
		"MW": ["Malawi", "Malawian"],
		"MX": ["Mexico", "Mexican"],
		"MY": ["Malaysia", "Malaysian"],
		"MZ": ["Mozambican", "Mozambique"],
		"NA": ["Namibia", "Namibian"],
		"NC": ["New Caledonia", "New Caledonian"],
		"NE": ["Niger", "Nigerien"],
		"NF": ["Norfolk Island", "Norfolk Islander"],
		"NG": ["Nigeria", "Nigerian"],
		"NI": ["Nicaragua", "Nicaraguan"],
		"NL": ["Dutch", "Netherlands"],
		"NO": ["Norway", "Norwegian"],
		"NP": ["Nepal", "Nepalese"],
		"NR": ["Nauru", "Nauruan"],
		"NU": ["Niue", "Niuean"],
		"NZ": ["New Zealand", "New Zealander"],
		"OM": ["Oman", "Omani"],
		"PA": ["Panama", "Panamanian"],
		"PE": ["Peru", "Peruvian"],
		"PF": ["French Polynesia", "French Polynesian"],
		"PG": ["Papua New Guinea", "Papua New Guinean"],
		"PH": ["Filipino", "Philippines"],
		"PK": ["Pakistan", "Pakistani"],
		"PL": ["Poland", "Polish"],
		"PM": ["Saint Pierre and Miquelon"],
		"PN": ["Pitcairn", "Pitcairn Islander"],
		"PR": ["Puerto Rico", "Puerto Rican"],
		"PS": ["Palestine", "Palestinian", "Palestinian Territory, Occupied"],
		"PT": ["Portugal", "Portuguese"],
		"PW": ["Palau", "Palauan"],
		"PY": ["Paraguay", "Paraguayan"],
		"QA": ["Qatar", "Qatari"],
		"RE": ["Reunion"],
		"RO": ["Romania", "Romanian"],
		"RS": ["Serbia", "Serbian"],
		"RU": ["Russian", "Russian Federation"],
		"RW": ["Rwanda", "Rwandan"],
		"SA": ["Saudi Arabia", "Saudi Arabian"],
		"SB": ["Solomon Islander", "Solomon Islands"],
		"SC": ["Seychelles", "Seychellois"],
		"SD": ["Sudan", "Sudanese"],
		"SE": ["Sweden", "Swedish"],
		"SG": ["Singapore", "Singaporean"],
		"SH": ["Saint Helena", "Saint Helenian"],
		"SI": ["Slovenia", "Slovene"],
		"SJ": ["Svalbard and Jan Mayen"],
		"SK": ["Slovak", "Slovakia"],
		"SL": ["Sierra Leone", "Sierra Leonean"],
		"SM": ["San Marino", "Sammarinese"],
		"SN": ["Senegal", "Senegalese"],
		"SO": ["Somalia", "Somali"],
		"SR": ["Suriname", "Surinamer"],
		"ST": ["Sao Tome and Principe", "Sao Tomean"],
		"SV": ["El Salvador", "Salvadoran"],
		"SY": ["Syrian", "Syrian Arab Republic"],
		"SZ": ["Swazi", "Swaziland"],
		"TC": ["Turks and Caicos Islander", "Turks and Caicos Islands"],
		"TD": ["Chad", "Chadian"],
		"TF": ["French Southern Territories"],
		"TG": ["Togo", "Togolese"],
		"TH": ["Thai", "Thailand"],
		"TJ": ["Tadzhik", "Tajikistan"],
		"TK": ["Tokelau", "Tokelauan"],
		"TL": ["East Timorese", "Timor-Leste"],
		"TM": ["Turkmen", "Turkmenistan"],
		"TN": ["Tunisia", "Tunisian"],
		"TO": ["Tonga", "Tongan"],
		"TR": ["Turkey", "Turkish"],
		"TT": ["Trinidad and Tobago", "Trinidadian"],
		"TV": ["Tuvalu", "Tuvaluan"],
		"TW": ["Taiwan", "Taiwanese"],
		"TZ": ["Tanzania, United Republic of", "Tanzanian"],
		"UA": ["Ukraine", "Ukrainian"],
		"UG": ["Uganda", "Ugandan"],
		"UM": ["United States Minor Outlying Islands"],
		"US": ["American", "United States", "USA"],
		"UY": ["Uruguay", "Uruguayan"],
		"UZ": ["Uzbekistan", "Uzbekistani"],
		"VA": ["Holy See (Vatican City State)", "Vatican"],
		"VC": ["Saint Vincent and the Grenadines", "Saint Vincentian"],
		"VE": ["Venezuela", "Venezuelan"],
		"VG": ["Virgin Islands, British"],
		"VI": ["Virgin Islands, U.S."],
		"VN": ["Viet Nam", "Vietnam", "Vietnamese"],
		"VU": ["Ni-Vanuatu", "Vanuatu"],
		"WF": ["Wallis and Futuna", "Wallis and Futuna Islander"],
		"WS": ["Samoa", "Samoan"],
		"XK": ["Kosovo", "Kosovar"],
		"YE": ["Yemen", "Yemeni"],
		"YT": ["Mahoran", "Mayotte"],
		"ZA": ["South Africa", "South African"],
		"ZM": ["Zambia", "Zambian"],
		"ZW": ["Zimbabwe", "Zimbabwean"],
	]

	
	private static let countryCodesByName: [String: String] = {
		var result: [String: String] = [:]
		for (code, names) in countries {
			for name in names {
				result[name.lowercased()] = code
			}
		}
		return result
	}()
	
	/// Returns the emoji flag for the given country.
	///
	///  Examples:
	///  - flag(for: "it") -> 🇮🇹
	///  - flag(for: "united states") -> 🇺🇸
	///  - flag(for: "england") -> nil
	///
	/// - Parameter country: Name or ISO 3166-1 code of the country
	/// - Returns: Emoji flag if available, nil otherwise
	public static func flag(for country: String) -> String? {
		guard let code = countryCode(for: country) else { return nil }
		return emojiFlag(for: code)
	}
	
	/// Convenient subscript access to flags.
	///
	///  Examples:
	///  - flag["it"] -> 🇮🇹
	///  - flag["united states"] -> 🇺🇸
	///  - flag["england"] -> nil
	public static subscript(country: String) -> String? {
		flag(for: country)
	}
	
	/// Returns only the country code for the given country.
	/// - Parameter country: Name of the country
	/// - Returns: ISO 3166-1 code for the given country, nil if no match found
	public static func countryCode(for country: String) -> String? {
		let input = country.trimmingCharacters(in: .whitespacesAndNewlines)
		if input.isEmpty { return nil }
		
		if input.count == 2 {
			let uppercased = input.uppercased()
			if countries[uppercased] != nil {
				return uppercased
			}
		}
		
		let lowercased = input.lowercased()
		if let code = countryCodesByName[lowercased] {
			return code
		}
		
		var matches = Set<String>()
		for (code, names) in countries {
			for name in names where compare(input: lowercased, countryName: name) {
				matches.insert(code)
			}
		}
		
		return matches.count == 1 ? matches.first : nil
	}
	
	private static func compare(input: String, countryName: String) -> Bool {
		let input = input.lowercased()
		let countryName = countryName.lowercased()
		
		// Direct contains comparison
		if countryName.contains(input) || input.contains(countryName) {
			return true
		}
		
		// Comma handling for input
		if input.contains(",") {
			let reversed = input
				.split(separator: ",")
				.reversed()
				.joined(separator: " ")
			
			return reversed.contains(countryName) || countryName.contains(reversed)
		}
		
		// Handle cases where input is "Republic of Korea" but country name is "Korea, Republic of"
		if !input.contains(",") {
			let inputWords = input
				.split(separator: " ")
				.map { String($0) }
			
			if inputWords.count >= 2 {
				// Try different split points
				for i in 1..<inputWords.count {
					let firstPart = inputWords[i...].joined(separator: " ")
					let secondPart = inputWords[0..<i].joined(separator: " ")
					
					// Create format like "Korea, Republic of" to compare with country names
					let possibleFormat = "\(firstPart), \(secondPart)"
					
					if countryName.contains(possibleFormat) || possibleFormat.contains(countryName) {
						return true
					}
				}
			}
		}
		
		return false
	}
	
	/// Converts an ISO country code into the emoji flag (unicode)
	/// - Parameter countryCode: Country code to convert
	/// - Returns: Emoji flag
	private static func emojiFlag(for countryCode: String) -> String {
		let base: UInt32 = 127_397
		var result = ""
		for scalar in countryCode.uppercased().unicodeScalars {
			guard let emoji = UnicodeScalar(base + scalar.value) else { continue }
			result.unicodeScalars.append(emoji)
		}
		return result
	}
}
