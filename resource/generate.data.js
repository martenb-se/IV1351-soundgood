// Settings
const DATE_YESTERDAY = (new Date(Date.UTC((new Date()).getUTCFullYear(), (new Date()).getUTCMonth(),
	(new Date()).getUTCDate() - 1, 0, 0, 0, 0)));
const CALENDAR_START = (new Date(Date.UTC(DATE_YESTERDAY.getUTCFullYear() - 3, 0, 1)))
	.toISOString().split("T")[0];
const CALENDAR_END = (new Date(Date.UTC(DATE_YESTERDAY.getUTCFullYear() + 2, 0, 0)))
	.toISOString().split("T")[0];
const CALENDAR_NOW = DATE_YESTERDAY.toISOString().split("T")[0];
const SCHEDULE_SET = (new Date(Date.UTC(DATE_YESTERDAY.getUTCFullYear(),
	DATE_YESTERDAY.getUTCMonth() + 2, 0))).toISOString().split("T")[0];

/**
 * Generate the final digit of a 9 digit person number and return the full person number.
 *
 * Created from the isValidLuhn-method found at
 * https://jymden.com/validate-swedish-personnummer-and-organisationsnummer/
 *
 * @param pnr An incomplete 9 digit person number.
 * @return {string} The full 10 digit person number.
 */
function validPNR(pnr) {
	let number;
	let checksum = 0;
	for (let i = pnr.length - 1; i >= 0; i--) {
		number = parseInt(pnr.charAt(i));
		if (i % 2 === 1) {
			checksum += number;
		} else {
			checksum += (number * 2) > 9 ? (number * 2) - 9 : number * 2;
		}
	}
	return pnr.substring(0,6) + "-" + pnr.substring(6,9) + ((10 - checksum % 10) % 10);
}

/**
 * Shuffle an array
 * Copied from: https://stackoverflow.com/a/12646864
 *
 * @param array The array to shuffle.
 */
function shuffleArray(array) {
	for (let i = array.length - 1; i > 0; i--) {
		const j = Math.floor(Math.random() * (i + 1));
		[array[i], array[j]] = [array[j], array[i]];
	}
}

/**
 * The database as a JS Object.
 */
let db = {};
db["instrument_category"] = [
	"name",
	"wind",
	"string",
	"keyboard"
];

db["instrument"] = [
	"type, instrument_category_id",
	["Steel-string acoustic guitar", db["instrument_category"].indexOf("string")],
	["Acoustic resonator guitar", db["instrument_category"].indexOf("string")],
	["Bansuri", db["instrument_category"].indexOf("wind")],
	["Spilåpipa", db["instrument_category"].indexOf("wind")],
	["Bandoneon", db["instrument_category"].indexOf("keyboard")],
	["Piano", db["instrument_category"].indexOf("keyboard")],
	["Keyboard glockenspiel", db["instrument_category"].indexOf("keyboard")],
	["Clavinet", db["instrument_category"].indexOf("keyboard")],
	["Bassoon", db["instrument_category"].indexOf("wind")],
	["Tenor horn", db["instrument_category"].indexOf("wind")],
	["Kafir harp", db["instrument_category"].indexOf("string")],
	["Khim", db["instrument_category"].indexOf("string")]
];

db["genre"] = [
	"name",
	"punk rock",
	"gospel band",
	"folk",
	"electronic",
	"disco",
	"reggae",
	"symphony",
	"metal",
	"hip hop"
];

// Person Data
const list_surname = ["Andersson", "Johansson", "Karlsson", "Nilsson", "Eriksson", "Larsson", "Olsson", "Persson",
	"Svensson", "Gustafsson", "Pettersson", "Jonsson", "Jansson", "Hansson", "Bengtsson", "Jönsson", "Lindberg",
	"Jakobsson", "Magnusson", "Olofsson", "Lindström", "Lindqvist", "Lindgren", "Axelsson", "Berg", "Bergström",
	"Lundberg", "Lundgren", "Lind", "Lundqvist", "Mattsson", "Berglund", "Fredriksson", "Sandberg", "Henriksson",
	"Forsberg", "Sjöberg", "Wallin", "Engström", "Eklund", "Danielsson", "Håkansson", "Lundin", "Gunnarsson", "Björk",
	"Bergman", "Holm", "Samuelsson", "Fransson", "Wikström", "Isaksson", "Bergqvist", "Nyström", "Arvidsson",
	"Holmberg", "Löfgren", "Ali", "Söderberg", "Mohamed", "Nyberg", "Blomqvist", "Claesson", "Mårtensson", "Nordström",
	"Lundström", "Eliasson", "Pålsson", "Viklund", "Björklund", "Berggren", "Sandström", "Lund", "Nordin", "Ström",
	"Åberg", "Hermansson", "Ekström", "Holmgren", "Hedlund", "Falk", "Sundberg", "Dahlberg", "Hellström", "Sjögren",
	"Abrahamsson", "Ek", "Blom", "Martinsson", "Öberg", "Ahmed", "Andreasson", "Hassan", "Månsson", "Strömberg",
	"Åkesson", "Hansen", "Jonasson", "Norberg", "Åström", "Sundström"];

const list_name = ["Anna", "Eva", "Maria", "Karin", "Kristina", "Sara", "Lena", "Emma", "Kerstin", "Ingrid",
	"Marie", "Malin", "Jenny", "Annika", "Hanna", "Linda", "Birgitta", "Susanne", "Elin", "Monica", "Inger",
	"Sofia", "Johanna", "Carina", "Elisabeth", "Ulla", "Julia", "Katarina", "Linnéa", "Emelie", "Ida", "Helena",
	"Camilla", "Åsa", "Anette", "Sandra", "Gunilla", "Anita", "Marianne", "Margareta", "Anneli", "Amanda", "Maja",
	"Ann", "Therese", "Josefin", "Cecilia", "Jessica", "Helen", "Lisa", "Caroline", "Matilda", "Barbro", "Frida",
	"Ulrika", "Elsa", "Siv", "Alice", "Madeleine", "Rebecca", "Klara", "Ebba", "Sofie", "Gun", "Agneta", "Berit",
	"Isabelle", "Lina", "Pia", "Wilma", "Ella", "Yvonne", "Louise", "Ellen", "Britt", "Astrid", "Mona", "Moa",
	"Nathalie", "Erika", "Alexandra", "Emilia", "Viktoria", "Ann-Christin", "Olivia", "Alva", "Agnes", "Felicia",
	"Ann-Marie", "Sonja", "Britt-Marie", "Pernilla", "Gunnel", "Lovisa", "Charlotte", "Linn", "Lisbeth", "Nina",
	"Rut", "Mikaela", "Lars", "Mikael", "Anders", "Johan", "Erik", "Per", "Karl", "Peter", "Thomas", "Jan", "Daniel",
	"Fredrik", "Hans", "Andreas", "Stefan", "Mohamed", "Mats", "Marcus", "Mattias", "Magnus", "Bengt", "Jonas",
	"Oskar", "Alexander", "Niklas", "Martin", "Bo", "Nils", "Patrik", "Viktor", "Björn", "Leif", "David", "Sven",
	"Henrik", "Filip", "Joakim", "Christer", "Ulf", "Emil", "Simon", "Christoffer", "Anton", "Gustav", "Robert",
	"Tommy", "Kjell", "Christian", "William", "Lucas", "Rickard", "Håkan", "Göran", "Rolf", "Adam", "Lennart",
	"Jakob", "Jonathan", "Robin", "Sebastian", "Tobias", "Stig", "Elias", "John", "Axel", "Linus", "Kent", "Oliver",
	"Roger", "Hugo", "Isak", "Claes", "Jesper", "Albin", "Jörgen", "Rasmus", "Ludvig", "Jimmy", "Max", "Ali",
	"Kenneth", "Gunnar", "Joel", "Dennis", "Johnny", "Josef", "Olof", "Åke", "Olle", "Kurt", "Liam", "Pontus", "Leo",
	"Kevin", "Samuel", "Torbjörn", "Felix", "Edvin", "Gabriel", "Arvid"];

const city = "Stockholm";

const list_street = ["Ankargränd", "Arsenalsgatan", "Artillerigatan", "Baggensgatan", "Bankkajen", "Bedoirsgränd", 
	"Benickebrinken", "Biblioteksgatan", "Birger Jarlsgatan", "Bollhusgränd", "Bredgränd", "Brunnsgränd", 
	"Didrik Ficks Gränd", "Drakens Gränd", "Drottninggatan", "Ferkens Gränd", "Finska Kyrkogränd", "Folkungagatan", 
	"Fru Gunillas Gränd", "Funckens Gränd", "Gaffelgränd", "Gåsgränd", "Göran Hälsinges Gränd", "Götgatan", "Hamngatan", 
	"Helga Lekamens Gränd", "Högvaktsterrassen", "Ignatiigränd", "Jakobsgatan", "Järntorgsgatan", "Johannesgränd", 
	"Kåkbrinken", "Källargränd", "Kanslikajen", "Kindstugatan", "Klockgjutargränd", "Kolmätargränd", "Köpmanbrinken", 
	"Köpmangatan", "Kråkgränd", "Kungsgatan", "Lejonbacken", "Lejonstedts Gränd", "Lilla Hoparegränd", "Lilla Nygatan", 
	"Malmskillnadsgatan", "Mårten Trotzigs Gränd", "Munkbrogatan", "Munkbrohamnen", "Munkbroleden", "Myntgatan", 
	"Norr Mälarstrand", "Norra Bankogränd", "Norra Dryckesgränd", "Norrlandsgatan", "Nybrogatan", "Nygränd", 
	"Odengatan", "Österlånggatan", "Överskärargränd", "Packhusgränd", "Peder Fredags Gränd", "Pelikansgränd", 
	"Prästgatan", "Rådhusgränd", "Riddargatan", "Riddarhusgränd", "Riddarhuskajen", "Riksgatan", "Salviigränd", 
	"Sankt Paulsgatan", "Schönfeldts Gränd", "Själagårdsgatan", "Skeppar Karls Gränd", "Skeppar Olofs Gränd", 
	"Skeppsbrokajen", "Skeppsbron", "Skomakargatan", "Skottgränd", "Skräddargränd", "Slottsbacken", "Slottskajen", 
	"Slussplan", "Södra Bankogränd", "Södra Dryckesgränd", "Solgränd", "Spektens Gränd", "Staffan Sasses Gränd", 
	"Stenbastugränd", "Stora Gråmunkegränd", "Stora Hoparegränd", "Stora Nygatan", "Storgatan", "Storkyrkobrinken", 
	"Strandvägen", "Strömsborgsbron", "Sturegatan", "Svartmangatan", "Sveavägen", "Sven Vintappares Gränd", 
	"Tegelbacken", "Telegrafgränd", "Torgdragargränd", "Torstenssonsgatan", "Trädgårdsgatan", "Trädgårdstvärgränd", 
	"Trångsund", "Triewaldsgränd", "Tulegatan", "Tullgränd", "Tunnelgatan", "Tyska Brinken", "Tyska Skolgränd", 
	"Vasagatan", "Västerlånggatan", "Västra Trädgårdsgatan", "Yxsmedsgränd"];

const street_regions = Math.floor(list_street.length / 3);
const zip_start = 10300;
const zip_range = 1200;
const street_number_max = 300;

// Duplicate block
let unique_pnr = [];
let unique_instructor_email = [];
let unique_instructor_mobile = [];
let unique_address = [];
let unique_phone = [];

// Instruments
let instrument_array = [];
for(let i = 1; i < db["instrument"].length; i++) {
	instrument_array = [...instrument_array, i];
}
shuffleArray(instrument_array);

/*
	PERSONS
 */
db["address"] = ["city_name, street_name, zip_code"];
db["email"] = ["email_address"];
db["phone"] = ["phone_number, phone_type"];
db["person"] = ["address_id, first_name, last_name, birth_date, person_number"];

db["person_email"] = ["person_id, email_id"];
db["person_phone"] = ["person_id, phone_id"];

/*
	50 INSTRUCTORS
	20-70 years.
 */
db["instructor"] = ["person_id, employee_id, able_to_teach_ensembles"];
db["instrument_taught_by_instructor"] = ["instructor_person_id, instrument_id"];
for(let i = 0; i < 50; i++) {

	let person_id = db["person"].length;
	let employee_id = "I-" + db["instructor"].length.toString().padStart(4, "0");
	let able_to_teach_ensembles = Math.round(Math.random()) === 0 ? "true" : "false";

	let street_index = Math.floor(Math.random() * list_street.length);
	let city_name = city;
	let street_number = (1 + Math.floor(Math.random() * street_number_max));
	let street_name = list_street[street_index] + " " + street_number;
	let zip_code = zip_start + Math.floor(zip_range / street_regions * (1 + street_index));

	let first_name = list_name[Math.floor(Math.random() * list_name.length)];
	let last_name = list_surname[Math.floor(Math.random() * list_surname.length)];

	let birth_date = new Date();
	let birth_date_max_date = new Date();
	birth_date.setUTCMilliseconds(0);
	birth_date.setUTCSeconds(0);
	birth_date.setUTCMinutes(0);
	birth_date.setUTCHours(0);
	birth_date.setUTCFullYear(birth_date.getUTCFullYear() - (20 + Math.floor(Math.random() * 50)));
	birth_date.setUTCMonth(Math.floor(Math.random() * 12));
	birth_date_max_date = new Date(birth_date.toISOString());
	birth_date_max_date.setUTCDate(0);
	birth_date.setUTCDate(Math.floor(1 + Math.random() * (birth_date_max_date.getUTCDate() - 1)));
	birth_date = birth_date.toISOString().split("T")[0];

	let pnr_digits = Math.floor(100 + Math.random() * 899) % 1000;
	let person_number = validPNR(birth_date.replaceAll("-","").substring(2,8) + 
		pnr_digits.toString());

	// Unique Person Number
	while(unique_pnr.indexOf(person_number) !== -1) {
		pnr_digits = Math.floor(100 + Math.random() * 899) % 1000;
		person_number = validPNR(birth_date.replaceAll("-","").substring(2,8) + 
			pnr_digits.toString());
	}
	unique_pnr = [...unique_pnr, person_number];

	let email_address = (first_name + "." + last_name).toLowerCase().replaceAll("å","aa")
		.replaceAll("ä","ae").replaceAll("ö","oe")
		.replaceAll("é", "e") + "+soundgood@temporary-mail.net";

	// Unique Email
	while(unique_instructor_email.indexOf(email_address) !== -1) {
		email_address = (first_name + "." + last_name).toLowerCase().replaceAll("å","aa")
			.replaceAll("ä","ae").replaceAll("ö","oe")
			.replaceAll("é", "e") + "_" + 
			(1 + Math.floor(Math.random() * 999)) + "+soundgood@temporary-mail.net";
	}
	unique_instructor_email = [...unique_instructor_email, email_address];

	let phone_number_home = "08-" + (1000000 + Math.floor(((8999 / list_street.length) * 
		(street_index + 1)) * 1000) + Math.floor(((999 / street_number_max) * street_number)));
	let phone_number_mobile = "07"+Math.floor(Math.random() * 10) + "-" + 
		(1000000 + Math.floor(Math.random() * 8999999));

	// Unique Phone
	while(unique_instructor_mobile.indexOf(phone_number_mobile) !== -1) {
		phone_number_mobile = "07"+Math.floor(Math.random() * 10) + "-" + 
			(1000000 + Math.floor(Math.random() * 8999999));
	}
	unique_instructor_mobile = [...unique_instructor_mobile, phone_number_mobile];

	let address_id = db["address"].length;

	// Old address
	if(unique_address.indexOf(city_name+street_name+zip_code) !== -1) {
		address_id = db["address"].findIndex(curAddr => curAddr[0] === city_name && 
			curAddr[1] === street_name && curAddr[2] === zip_code);
	// New address
	} else {
		unique_address = [...unique_address, city_name+street_name+zip_code];
		db["address"] = [...db["address"], [
			city_name,
			street_name,
			zip_code
		]];
	}

	let email_id = db["email"].length;
	db["email"] = [...db["email"], [
		email_address
	]];

	let phone_home_id = db["phone"].length;
	// Old phone
	if(unique_phone.indexOf(phone_number_home) !== -1) {
		phone_home_id = db["phone"].findIndex(curPhone => curPhone[0] === phone_number_home);
	// New phone
	} else {
		unique_phone = [...unique_phone, phone_number_home];
		db["phone"] = [...db["phone"], [
			phone_number_home,
			"home"
		]];
	}

	let phone_work_id = db["phone"].length;
	db["phone"] = [...db["phone"], [
		phone_number_mobile,
		"work"
	]];

	db["person"] = [...db["person"], [
		address_id,
		first_name,
		last_name,
		birth_date,
		person_number
	]];

	// Connections
	db["person_email"] = [...db["person_email"], [
		person_id,
		email_id
	]];

	db["person_phone"] = [...db["person_phone"], [
		person_id,
		phone_home_id
	], [
		person_id,
		phone_work_id
	]];

	// Instructor
	db["instructor"] = [...db["instructor"], [
		person_id,
		employee_id,
		able_to_teach_ensembles
	]];

	// Instructor instruments (5/10 of all instruments or 8/10)
	shuffleArray(instrument_array);
	for(let j = 0; j < Math.ceil((instrument_array.length / 10) * (5 + Math.floor(Math.random() * 4))); j++) {
		db["instrument_taught_by_instructor"] = [...db["instrument_taught_by_instructor"], [
			person_id,
			instrument_array[j]
		]];
	}

}

/*
	Min 500 STUDENT (and PARENT)
	11-17 years today.
 */
db["parent"] = ["first_name, last_name"];
db["parent_email"] = ["parent_id, email_id"];
db["parent_phone"] = ["parent_id, phone_id"];
db["student"] = ["person_id, student_id, genre_id"];
db["student_instrument"] = ["student_person_id, instrument_id, skill_level"];
db["student_sibling"] = ["student_person_id, sibling_person_id"];
db["parent_student"] = ["parent_id, student_person_id"];
for(let i = 0; i < 500; i++) {
	let last_name = list_surname[Math.floor(Math.random() * list_surname.length)];

	// Duplicate block in same family
	let unique_name_combo = [];

	let parent_id_array = [];
	let student_person_id_array = [];

	let num_parents = 1 + Math.round(Math.random());

	// Parent(s)
	for (let j = 0; j < num_parents; j++) {
		let parent_id = db["parent"].length;
		parent_id_array = [...parent_id_array, parent_id];

		let first_name = list_name[Math.floor(Math.random() * list_name.length)];
		// Unique Name Combination in Current Family
		while (unique_name_combo.indexOf(first_name) !== -1) {
			first_name = list_name[Math.floor(Math.random() * list_name.length)];
		}
		unique_name_combo = [...unique_name_combo, first_name];

		let email_address = (first_name + "." + last_name).toLowerCase().replaceAll("å", "aa")
			.replaceAll("ä", "ae").replaceAll("ö", "oe")
			.replaceAll("é", "e") + "+parent@temporary-mail.net";
		// Unique Email
		while (unique_instructor_email.indexOf(email_address) !== -1) {
			email_address = (first_name + "." + last_name).toLowerCase().replaceAll("å", "aa")
				.replaceAll("ä", "ae").replaceAll("ö", "oe")
				.replaceAll("é", "e") + "_" + 
				(1 + Math.floor(Math.random() * 999)) + "+parent@temporary-mail.net";
		}
		unique_instructor_email = [...unique_instructor_email, email_address];

		let phone_number_mobile = "07" + Math.floor(Math.random() * 10) + "-" + 
			(1000000 + Math.floor(Math.random() * 8999999));
		// Unique Phone
		while (unique_instructor_mobile.indexOf(phone_number_mobile) !== -1) {
			phone_number_mobile = "07" + Math.floor(Math.random() * 10) + "-" + 
				(1000000 + Math.floor(Math.random() * 8999999));
		}
		unique_instructor_mobile = [...unique_instructor_mobile, phone_number_mobile];

		let email_id = db["email"].length;
		db["email"] = [...db["email"], [
			email_address
		]];

		let phone_work_id = db["phone"].length;
		db["phone"] = [...db["phone"], [
			phone_number_mobile,
			"work"
		]];

		db["parent"] = [...db["parent"], [
			first_name,
			last_name
		]];

		// Connections
		db["parent_email"] = [...db["parent_email"], [
			parent_id,
			email_id
		]];

		db["parent_phone"] = [...db["parent_phone"], [
			parent_id,
			phone_work_id
		]];

	}

	// Student(s) (1/5 chance to have siblings)
	let num_siblings = 1 + (Math.floor(Math.random() * 5) === 0 ? (1 + Math.floor(Math.random() * 2)) : 0);

	// Much same contact information for siblings
	let street_index = Math.floor(Math.random() * list_street.length);
	let city_name = city;
	let street_number = (1 + Math.floor(Math.random() * street_number_max));
	let street_name = list_street[street_index] + " " + street_number;
	let zip_code = 10300 + Math.floor(1200 / street_regions * (1 + street_index));
	let phone_number_home = "08-" + (1000000 + Math.floor(((8999 / list_street.length) * 
		(street_index + 1)) * 1000) + Math.floor(((999 / street_number_max) * street_number)));

	let address_id = db["address"].length;
	// Old address
	if (unique_address.indexOf(city_name + street_name + zip_code) !== -1) {
		address_id = db["address"].findIndex(curAddr => curAddr[0] === city_name && 
			curAddr[1] === street_name && curAddr[2] === zip_code);
		// New address
	} else {
		unique_address = [...unique_address, city_name + street_name + zip_code];
		db["address"] = [...db["address"], [
			city_name,
			street_name,
			zip_code
		]];
	}

	let phone_home_id = db["phone"].length;
	// Old phone
	if(unique_phone.indexOf(phone_number_home) !== -1) {
		phone_home_id = db["phone"].findIndex(curPhone => curPhone[0] === phone_number_home);
		// New phone
	} else {
		unique_phone = [...unique_phone, phone_number_home];
		db["phone"] = [...db["phone"], [
			phone_number_home,
			"home"
		]];
	}

	for (let j = 0; j < num_siblings; j++) {
		let student_person_id = db["person"].length;
		let student_id = "S-" + db["student"].length.toString().padStart(6, "0");
		let genre_id = Math.floor(Math.random()*2) === 0 ? (1 + Math.floor(Math.random() * 
			(db["genre"].length - 1))) : "\\N";

		student_person_id_array = [...student_person_id_array, student_person_id];

		let first_name = list_name[Math.floor(Math.random() * list_name.length)];
		// Unique Name Combination in Current Family
		while (unique_name_combo.indexOf(first_name) !== -1) {
			first_name = list_name[Math.floor(Math.random() * list_name.length)];
		}
		unique_name_combo = [...unique_name_combo, first_name];

		let birth_date = new Date();
		let birth_date_max_date = new Date();
		birth_date.setUTCMilliseconds(0);
		birth_date.setUTCSeconds(0);
		birth_date.setUTCMinutes(0);
		birth_date.setUTCHours(0);
		birth_date.setUTCFullYear(birth_date.getUTCFullYear() - (11 + Math.floor(Math.random() * 7)));
		birth_date.setUTCMonth(Math.floor(Math.random() * 12));
		birth_date_max_date = new Date(birth_date.toISOString());
		birth_date_max_date.setUTCDate(0);
		birth_date.setUTCDate(Math.floor(1 + Math.random() * (birth_date_max_date.getUTCDate() - 1)));
		birth_date = birth_date.toISOString().split("T")[0];

		let pnr_digits = Math.floor(100 + Math.random() * 899) % 1000;
		let person_number = validPNR(birth_date.replaceAll("-", "").substring(2, 8) +
			pnr_digits.toString());

		// Unique Person Number
		while (unique_pnr.indexOf(person_number) !== -1) {
			pnr_digits = Math.floor(100 + Math.random() * 899) % 1000;
			person_number = validPNR(birth_date.replaceAll("-", "").substring(2, 8) + 
				pnr_digits.toString());
		}
		unique_pnr = [...unique_pnr, person_number];

		let email_address = (first_name + "." + last_name).toLowerCase().replaceAll("å", "aa")
			.replaceAll("ä", "ae").replaceAll("ö", "oe")
			.replaceAll("é", "e") + "_" +
			birth_date.substring(2, 4) + "+student@temporary-mail.net";
		// Unique Email
		while (unique_instructor_email.indexOf(email_address) !== -1) {
			email_address = (first_name + "." + last_name).toLowerCase().replaceAll("å", "aa")
				.replaceAll("ä", "ae").replaceAll("ö", "oe")
				.replaceAll("é", "e") + "_" +
				(1 + Math.floor(Math.random() * 999)) + "+student@temporary-mail.net";
		}
		unique_instructor_email = [...unique_instructor_email, email_address];

		let email_id = db["email"].length;
		db["email"] = [...db["email"], [
			email_address
		]];

		db["person"] = [...db["person"], [
			address_id,
			first_name,
			last_name,
			birth_date,
			person_number
		]];
		db["student"] = [...db["student"], [
			student_person_id,
			student_id,
			genre_id
		]];

		// Connections
		db["person_phone"] = [...db["person_phone"], [
			student_person_id,
			phone_home_id
		]];

		db["person_email"] = [...db["person_email"], [
			student_person_id,
			email_id
		]];

		// 2/3 chance to only play 1 instrument
		// 1/3 chance to play 1 - 1/2 of all possible instruments
		shuffleArray(instrument_array);
		for(let k = 0; k < 1 + (Math.floor(Math.random() * 3) === 0 ?
			Math.floor(Math.random() * Math.ceil(instrument_array.length / 2)) : 0); k++) {
			db["student_instrument"] = [...db["student_instrument"], [
				student_person_id,
				instrument_array[k],
				["beginner", "intermediate", "advanced"][Math.floor(Math.random()*3)]
			]];
		}

	}

	// Connections
	parent_id_array.forEach(parent_id => {
		student_person_id_array.forEach(student_person_id => {
			db["parent_student"] = [...db["parent_student"], [
				parent_id,
				student_person_id
			]];
		});
	});

	if (num_siblings > 1) {
		student_person_id_array.forEach(student_person_id => {
			student_person_id_array.forEach(sibling_person_id => {
				if (student_person_id !== sibling_person_id) {
					db["student_sibling"] = [...db["student_sibling"], [
						student_person_id,
						sibling_person_id
					]];
				}
			});
		});
	}

}

/*
	STUDENT APPLICATION
 */

// Application email addresses
db["email"] = [...db["email"], "stella.svensson@truthfinderlogin.com"];
db["email"] = [...db["email"], "loke.aaberg@truthfinderlogin.com"];
db["email"] = [...db["email"], "william.bjoerk@truthfinderlogin.com"];
db["email"] = [...db["email"], "carljohan.holmgren@truthfinderlogin.com"];
db["email"] = [...db["email"], "yonis.nilsson@truthfinderlogin.com"];

// Application phone numbers
db["phone"] = [...db["phone"], ["091-1735185", "home"]];
db["phone"] = [...db["phone"], ["092-2470370", "home"]];
db["phone"] = [...db["phone"], ["093-3205555", "home"]];
db["phone"] = [...db["phone"], ["094-3940740", "home"]];
db["phone"] = [...db["phone"], ["095-4675925", "home"]];

db["student_application"] = [
	"first_name, last_name, birth_date, person_number, email_id, phone_id, instrument_id, skill_level, genre_id",
	["Stella", "Svensson", "2010-01-01", validPNR("100101123"),
		db["email"].indexOf("stella.svensson@truthfinderlogin.com"),
		db["phone"].findIndex(curPhone => curPhone[0] === "091-1735185"),
		db["instrument"].findIndex(curInstr => curInstr[0] === "Steel-string acoustic guitar"),
		"beginner",
		"\\N"],
	["Loke", "Åberg", "2010-05-12", validPNR("100512432"),
		db["email"].indexOf("loke.aaberg@truthfinderlogin.com"),
		db["phone"].findIndex(curPhone => curPhone[0] === "092-2470370"),
		db["instrument"].findIndex(curInstr => curInstr[0] === "Acoustic resonator guitar"),
		"intermediate",
		"\\N"],
	["William", "Björk", "2008-05-10", validPNR("080510093"),
		db["email"].indexOf("william.bjoerk@truthfinderlogin.com"),
		db["phone"].findIndex(curPhone => curPhone[0] === "093-3205555"),
		db["instrument"].findIndex(curInstr => curInstr[0] === "Keyboard glockenspiel"),
		"advanced",
		"\\N"],
	["Carl-Johan", "Holmgren", "2010-10-10", validPNR("101010238"),
		db["email"].indexOf("carljohan.holmgren@truthfinderlogin.com"),
		db["phone"].findIndex(curPhone => curPhone[0] === "094-3940740"),
		"\\N",
		"\\N",
		db["genre"].indexOf("disco")],
	["Yonis", "Nilsson", "2009-12-07", validPNR("091207320"),
		db["email"].indexOf("yonis.nilsson@truthfinderlogin.com"),
		db["phone"].findIndex(curPhone => curPhone[0] === "095-4675925"),
		"\\N",
		"\\N",
		db["genre"].indexOf("folk")]
];

let iterDateTime = new Date("2020-01-07");
db["advanced_audition"] = [
	"student_application_id, date, time",
	[db["student_application"].findIndex(curPers => curPers[0] === "William" && curPers[1] === "Björk"),
		iterDateTime.toISOString().split("T")[0],
		iterDateTime.toISOString().split("T")[1].substring(0,5)]
];

db["instrument_in_stock"] = ["instrument_brand, available_quantity, instrument_id"];
for(let i = 1; i < db["instrument"].length; i++) {
	["Gibson", "Harman Professional", "Yamaha"].forEach(instrBrand => {
		db["instrument_in_stock"] = [
			...db["instrument_in_stock"],
			[
				instrBrand,
				5 + Math.floor(Math.random() * 6),
				i
			]
		];
	});
}

db["pricing_scheme_instrument_fee"] = ["date, instrument_in_stock_id, price"];
for(let i = 1; i < db["instrument_in_stock"].length; i++) {
	db["pricing_scheme_instrument_fee"] = [
		...db["pricing_scheme_instrument_fee"],
		[
			CALENDAR_START,
			i,
			49 + 10 * Math.floor(Math.random()*20)
		]
	];
}

// Price changes
iterDateTime = new Date(CALENDAR_START);
iterDateTime.setUTCDate(iterDateTime.getUTCDate() + 1);
while(iterDateTime.getTime() <= (new Date(CALENDAR_NOW)).getTime()) {
	// 1/30 chance to change a price
	if (Math.floor(Math.random() * 30) === 0) {
		db["pricing_scheme_instrument_fee"] = [
			...db["pricing_scheme_instrument_fee"],
			[
				iterDateTime.toISOString().split("T")[0],
				1 + Math.floor(Math.random() * (db["instrument_in_stock"].length - 1)),
				49 + 10 * Math.floor(Math.random()*20)
			]
		];
	}
	iterDateTime.setUTCDate(iterDateTime.getUTCDate() + 1);
}

db["instrument_rental"] =
	["pricing_scheme_instrument_fee_id, instrument_in_stock_id, date_from, date_to, student_person_id"];

let max_rentals = 2;
let student_rentals = JSON.parse(JSON.stringify(db["student"])).splice(1).map(curStudent => [curStudent[0], 0]);
let instruments_in_stock = JSON.parse(JSON.stringify(db["instrument_in_stock"])).splice(1);
let rentals = {};

iterDateTime = new Date(CALENDAR_START);
while(iterDateTime.getTime() <= (new Date(CALENDAR_NOW)).getTime()) {

	// Rental Today (1/2 chance)
	if (Math.floor(Math.random()*2) === 0) {
		// Number of rentals today (1 - 1/6 of all instruments)
		for(let i = 0; i < Math.floor(1 + Math.random() * Math.ceil(instruments_in_stock.length/8)); i++) {

			let students_allowed_rentals = student_rentals.filter(curStudent => curStudent[1] < max_rentals);
			let instruments_allowed_to_rent = instruments_in_stock.filter(curInstrument => curInstrument[1] > 0);

			// Cannot rent more right now
			if (students_allowed_rentals.length === 0 || instruments_allowed_to_rent.length === 0) {
				break;
			}

			let rental_student = students_allowed_rentals[Math.floor(Math.random() *
				students_allowed_rentals.length)];
			let rental_instrument = instruments_allowed_to_rent[Math.floor(Math.random() *
				instruments_allowed_to_rent.length)];

			let rental_until_date = (new Date(Date.UTC(iterDateTime.getUTCFullYear(),
				iterDateTime.getUTCMonth() + 1 + Math.floor(Math.random() * 12),
				iterDateTime.getUTCDate() - 1)));
			let rental_until = rental_until_date.toISOString().split("T")[0];
			if (rentals.hasOwnProperty(rental_until)) {
				rentals[rental_until] = [...rentals[rental_until], [rental_student, rental_instrument]];
			} else {
				rentals[rental_until] = [[rental_student, rental_instrument]];
			}

			rental_student[1]++;
			rental_instrument[1]--;

			let stock_id = db["instrument_in_stock"].findIndex(curStock => curStock[2] === rental_instrument[2] &&
				curStock[0] === rental_instrument[0]);
			let fee_id = db["pricing_scheme_instrument_fee"].findIndex(curFee => curFee[1] === stock_id);
			let student_person_id = rental_student[0];

			db["instrument_rental"] = [...db["instrument_rental"], [
				fee_id,
				stock_id,
				iterDateTime.toISOString().split("T")[0],
				(rental_until_date.getTime() <= (new Date(CALENDAR_NOW)).getTime()) ? rental_until : "\\N",
				student_person_id
			]];

		}
	}

	// Rentals Finished
	if (rentals.hasOwnProperty(iterDateTime.toISOString().split("T")[0])) {
		rentals[iterDateTime.toISOString().split("T")[0]].forEach(rentalRef => {
			rentalRef[0][1]--;
			rentalRef[1][1]++;
		})
	}

	iterDateTime.setUTCDate(iterDateTime.getUTCDate() + 1);
}

// Bookings
db["calendar_day"] = ["date, is_special_day_price"];

db["group_lesson_slot"] = ["calendar_day_date, place, start_time, end_time"];
db["scheduled_lesson"] = ["group_lesson_slot_id, available_places, min_enrolled_students, instructor_person_id"];
db["group_lesson"] = ["group_lesson_slot_id, instrument_id, skill_level"];
db["ensemble"] = ["group_lesson_slot_id, genre_id"];

db["scheduled_lesson_student"] = ["group_lesson_slot_id, student_person_id"];

db["individual_lesson_period"] = ["calendar_day_date, start_time, end_time"];
db["individual_lesson"] = ["student_person_id, instructor_person_id, instrument_id"];

db["available_instructor_during_individual_lesson_period"] = ["instructor_person_id, individual_lesson_period_id"];
db["booked_individual_lesson_on_individual_lesson_period"] = ["individual_lesson_id, individual_lesson_period_id"];

// Lessons
iterDateTime = new Date(CALENDAR_START);
while(iterDateTime.getTime() <= (new Date(CALENDAR_END)).getTime()) {
	// Calendar days
	db["calendar_day"] = [...db["calendar_day"], [
		iterDateTime.toISOString().split("T")[0],
		iterDateTime.getDay() === 0 || iterDateTime.getDay() === 6 ? "true" : "false"
	]];

	// Schedule Past
	const activity_times = [8, 10, 13, 15];
	const activity_duration = 2;
	activity_times.forEach(activity_time => {
		let room_group = 101;
		let room_ensemble = "A".charCodeAt(0);

		// Prevent double booking
		let chosen_instr = [];
		let available_instr = db["instructor"];
		let available_instr_ensemble = available_instr.filter(curInstr => curInstr[2] === "true");

		let chosen_students = [];
		let available_students = db["student"];

		// 0 - 5 Individual Lessons at a time
		let individual_lesson_period_id = db["individual_lesson_period"].length;
		for(let j = 0; j < Math.floor(Math.random() * 6); j++) {
			let individual_lesson_id = db["individual_lesson"].length;

			// Add Day
			if (j === 0) {
				db["individual_lesson_period"] = [...db["individual_lesson_period"], [
					iterDateTime.toISOString().split("T")[0],
					activity_time.toString().padStart(2,"0")+":00",
					(activity_time + activity_duration).toString().padStart(2,"0")+":00"
				]];
			}

			// Set Event OR Unset but Booked (1/5 chance)
			if (iterDateTime.getTime() <= (new Date(SCHEDULE_SET)).getTime() ||
				Math.floor(Math.random() * 5) === 0) {

				let random_instrument = 1 + Math.floor(Math.random() * (db["instrument"].length - 1));
				let random_level = ["beginner", "intermediate", "advanced"][Math.floor(Math.random() * 3)];
				let available_students_person_id = available_students.map(curAvailableStudent =>
					curAvailableStudent[0]);
				let instrument_students = db["student_instrument"].filter(curStuIns =>
					available_students_person_id.indexOf(curStuIns[0]) !== -1 &&
					curStuIns[1] === random_instrument && curStuIns[2] === random_level);

				let available_instructors_person_id = available_instr.map(curAvailableInstructor =>
					curAvailableInstructor[0]);
				let instrument_instructors = db["instrument_taught_by_instructor"].filter(curInsIns =>
					available_instructors_person_id.indexOf(curInsIns[0]) !== -1 && curInsIns[1] === random_instrument);

				let LOOP_PROTECTOR = 0;
				while(instrument_students.length === 0 || instrument_instructors.length === 0) {
					if (LOOP_PROTECTOR++ >= 1000) {
						console.log("--Error! Couldn't find student and instructor");
						process.exit(0);
					}
					random_instrument = 1 + Math.floor(Math.random() * (db["instrument"].length - 1));
					random_level = ["beginner", "intermediate", "advanced"][Math.floor(Math.random() * 3)];
					available_students_person_id = available_students.map(curAvailableStudent =>
						curAvailableStudent[0]);
					instrument_students = db["student_instrument"].filter(curStuIns =>
						available_students_person_id.indexOf(curStuIns[0]) !== -1 &&
						curStuIns[1] === random_instrument && curStuIns[2] === random_level);
					available_instructors_person_id = available_instr.map(curAvailableInstructor =>
						curAvailableInstructor[0]);
					instrument_instructors = db["instrument_taught_by_instructor"].filter(curInsIns =>
						available_instructors_person_id.indexOf(curInsIns[0]) !== -1 &&
						curInsIns[1] === random_instrument);
				}

				let student_person_id = instrument_students[Math.floor(Math.random() *
					instrument_students.length)][0];
				let instructor_person_id = instrument_instructors[Math.floor(Math.random() *
					instrument_instructors.length)][0];

				// Available but booked
				// Should be removed once schedule is set
				if (iterDateTime.getTime() > (new Date(SCHEDULE_SET)).getTime()) {
					db["available_instructor_during_individual_lesson_period"] =
						[...db["available_instructor_during_individual_lesson_period"], [
						instructor_person_id,
						individual_lesson_period_id
					]];
				}

				db["individual_lesson"] = [...db["individual_lesson"], [
					student_person_id,
					instructor_person_id,
					random_instrument
				]];

				db["booked_individual_lesson_on_individual_lesson_period"] =
					[...db["booked_individual_lesson_on_individual_lesson_period"], [
					individual_lesson_id,
					individual_lesson_period_id
				]];

				// Filter away booked instructors for next booking at the same activity time
				chosen_instr = [...chosen_instr, instructor_person_id];
				available_instr = db["instructor"].filter(curInstr => chosen_instr.indexOf(curInstr[0]) === -1);
				chosen_students = [...available_students, student_person_id];
				available_students = db["student"].filter(curStudent => chosen_students.indexOf(curStudent[0]) === -1);

			// Unset Event AND Unbooked
			} else {

				let available_instructors_person_id = available_instr.map(curAvailableInstructor =>
					curAvailableInstructor[0]);
				let instructor_person_id = available_instructors_person_id[1 +
				Math.floor(Math.random() * (available_instructors_person_id.length - 1))];

				db["available_instructor_during_individual_lesson_period"] =
					[...db["available_instructor_during_individual_lesson_period"], [
					instructor_person_id,
					individual_lesson_period_id
				]];

				// Filter away booked instructors for next booking at the same activity time
				chosen_instr = [...chosen_instr, instructor_person_id];
				available_instr = db["instructor"].filter(curInstr => chosen_instr.indexOf(curInstr[0]) === -1);

			}

		}

		// 0 - 3 Scheduled Lessons at a time
		for(let j = 0; j < Math.floor(Math.random() * 4); j++) {

			let room_name = "";
			let group_lesson_slot_id = db["group_lesson_slot"].length;
			let available_places = 6 + Math.floor(Math.random()*5);
			let min_enrolled_students = 2 + Math.floor(Math.random()*3);
			let instructor_person_id = 0;
			let selected_students = [];

			// Group Lesson
			if (Math.round(Math.random()) === 0) {
				room_name = "Room " + (room_group++);
				instructor_person_id = available_instr[1 + Math.floor(Math.random() * (available_instr.length - 1))][0];

				let random_instrument = 1 + Math.floor(Math.random() * (db["instrument"].length - 1));
				let random_level = ["beginner", "intermediate", "advanced"][Math.floor(Math.random() * 3)];
				let available_students_person_id = available_students.map(curAvailableStudent => curAvailableStudent[0]);
				let instrument_students = db["student_instrument"].filter(curStuIns =>
					available_students_person_id.indexOf(curStuIns[0]) !== -1 &&
					curStuIns[1] === random_instrument && curStuIns[2] === random_level);
				let LOOP_PROTECTOR = 0;
				while(instrument_students.length < min_enrolled_students) {
					if (LOOP_PROTECTOR++ >= 1000) {
						console.log("--Error! Couldn't find instrument+level with enough students");
						process.exit(0);
					}
					random_instrument = 1 + Math.floor(Math.random() * (db["instrument"].length - 1));
					random_level = ["beginner", "intermediate", "advanced"][Math.floor(Math.random() * 3)];
					available_students_person_id = available_students.map(curAvailableStudent => curAvailableStudent[0]);
					instrument_students = db["student_instrument"].filter(curStuIns =>
						available_students_person_id.indexOf(curStuIns[0]) !== -1 &&
						curStuIns[1] === random_instrument && curStuIns[2] === random_level);
				}

				selected_students = [...instrument_students];

				db["group_lesson"] = [...db["group_lesson"], [
					group_lesson_slot_id,
					random_instrument,
					random_level
				]];

			// Ensemble
			} else {
				room_name = "Ensemble Room " + String.fromCharCode(room_ensemble++);
				instructor_person_id = available_instr_ensemble[Math.floor(Math.random() *
					available_instr_ensemble.length)][0];

				let random_genre = 1 + Math.floor(Math.random() * (db["genre"].length - 1));
				let genre_students = available_students.filter(curStudent => curStudent[2] === random_genre);
				let LOOP_PROTECTOR = 0;
				while(genre_students.length < min_enrolled_students) {
					if (LOOP_PROTECTOR++ >= 1000) {
						console.log("--Error! Couldn't find genre with enough students");
						process.exit(0);
					}
					random_genre = 1 + Math.floor(Math.random() * (db["genre"].length - 1));
					genre_students = available_students.filter(curStudent => curStudent[2] === random_genre);
				}

				selected_students = [...genre_students];

				db["ensemble"] = [...db["ensemble"], [
					group_lesson_slot_id,
					random_genre
				]];

			}

			// Selected students
			shuffleArray(selected_students);
			selected_students = selected_students.map(curSelectedStudent => curSelectedStudent[0]);
			let num_selected_students_max = selected_students.length >= available_places ?
				available_places : selected_students.length;
			// Set Event (must match min_enrolled_students)
			if (iterDateTime.getTime() <= (new Date(SCHEDULE_SET)).getTime()) {
				let num_selected_students = min_enrolled_students + Math.floor(Math.random() *
					(num_selected_students_max - min_enrolled_students));
				selected_students = selected_students.slice(0, num_selected_students);
			// Unset Event (might not match min_enrolled_students)
			} else {
				let num_selected_students = 1 + Math.floor(Math.random() * (num_selected_students_max));
				selected_students = selected_students.slice(0, num_selected_students);
			}

			// Filter away booked instructors for next booking at the same activity time
			chosen_instr = [...chosen_instr, instructor_person_id];
			available_instr = db["instructor"].filter(curInstr => chosen_instr.indexOf(curInstr[0]) === -1);
			chosen_students = [...available_students, ...selected_students];
			available_students = db["student"].filter(curStudent => chosen_students.indexOf(curStudent[0]) === -1);

			db["group_lesson_slot"] = [...db["group_lesson_slot"], [
				iterDateTime.toISOString().split("T")[0],
				room_name,
				activity_time.toString().padStart(2,"0")+":00",
				(activity_time + activity_duration).toString().padStart(2,"0")+":00"
			]];

			db["scheduled_lesson"] = [...db["scheduled_lesson"], [
				group_lesson_slot_id,
				available_places,
				min_enrolled_students,
				instructor_person_id
			]];

			selected_students.forEach(cur_student_person_id => {
				db["scheduled_lesson_student"] = [...db["scheduled_lesson_student"], [
					group_lesson_slot_id,
					cur_student_person_id
				]];
			});

		}
	});

	iterDateTime.setUTCDate(iterDateTime.getUTCDate() + 1);

}

// Printout
// Clear old data
console.log("--\n-- Clear old data\n--\n\\! echo 'Clearing old data..';")
Object.keys(db).forEach((table) => {
	console.log("TRUNCATE \"" + table + "\" RESTART IDENTITY CASCADE;");
});

// Add new data
console.log("\n--\n-- Testing data\n--\n\\! echo 'Insert testing data..';");
Object.keys(db).forEach((table) => {

	console.log("-- " + table + "\n" +
		"\\! echo 'Insert into " + table.replaceAll("_", " ")
			.replaceAll(/(^|\s)\S/g, l => l.toUpperCase()) + "..';\n" +
		"COPY " + table + " (" + db[table][0] + ") FROM stdin;");
	for(let i = 1; i < db[table].length; i++) {
		if (typeof db[table][i] === "string") {
			console.log(db[table][i]);
		} else {
			console.log(db[table][i].join("	"));
		}
	}
	console.log("\\.\n");
});

// Refresh materialized views.
console.log("\n-- Immediately refresh materialized views\n" +
	"REFRESH MATERIALIZED VIEW olap_last_month_lessons_given;");