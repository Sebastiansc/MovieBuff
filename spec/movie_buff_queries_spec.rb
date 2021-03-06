require 'rspec'
require 'rails_helper'
require 'spec_helper'

require_relative '../movie_buff/queries.rb'

describe 'movie_names_before_1940' do
	subject { movie_names_before_1940.as_json }

	it 'retrieves the correct information' do
		expect(subject).to contain_exactly(
			{"id"=>72, "title"=>"Wizard of Oz, The", "yr"=>1939},
			{"id"=>105, "title"=>"Gone with the Wind", "yr"=>1939},
			{"id"=>453, "title"=>"Mr. Smith Goes to Washington", "yr"=>1939},
			{"id"=>464, "title"=>"Snow White and the Seven Dwarfs", "yr"=>1937},
			{"id"=>555, "title"=>"Duck Soup", "yr"=>1933},
			{"id"=>589, "title"=>"Modern Times", "yr"=>1936},
			{"id"=>667, "title"=>"Bringing Up Baby", "yr"=>1938},
			{"id"=>848, "title"=>"City Lights", "yr"=>1931},
			{"id"=>876, "title"=>"39 Steps, The", "yr"=>1935},
			{"id"=>922, "title"=>"Gold Rush, The", "yr"=>1925},
			{"id"=>924, "title"=>"Adventures of Robin Hood, The", "yr"=>1938},
			{"id"=>960, "title"=>"All Quiet on the Western Front", "yr"=>1930},
			{"id"=>966, "title"=>"Night at the Opera, A", "yr"=>1935},
			{"id"=>983, "title"=>"Nosferatu, eine Symphonie des Grauens", "yr"=>1922},
			{"id"=>993, "title"=>"General, The", "yr"=>1927},
			{"id"=>1064, "title"=>"Frankenstein", "yr"=>1931},
			{"id"=>1103, "title"=>"Stagecoach", "yr"=>1939},
			{"id"=>1125, "title"=>"Bronenosets Potyomkin", "yr"=>1925},
			{"id"=>1215, "title"=>"Thin Man, The", "yr"=>1934},
			{"id"=>1234, "title"=>"Grande illusion, La", "yr"=>1937},
			{"id"=>1273, "title"=>"Freaks", "yr"=>1932},
			{"id"=>1568, "title"=>"Bride of Frankenstein", "yr"=>1935},
			{"id"=>1800, "title"=>"Un chien andalou", "yr"=>1929})
	end

  it "hits the database exactly once" do
    expect{ subject }.to make_database_queries(count: 1)
  end

end

describe "eighties_b_movies" do
	subject { eighties_b_movies.as_json }
	it "retrieves the correct information" do
		expect(subject).to contain_exactly(
			{"id"=>472, "title"=>"Star Trek V: The Final Frontier", "yr"=>1989, "score"=>4.6},
			{"id"=>607, "title"=>"Rocky IV", "yr"=>1985, "score"=>4.8},
			{"id"=>663, "title"=>"Howard the Duck", "yr"=>1986, "score"=>3.7},
			{"id"=>682, "title"=>"'Crocodile' Dundee II", "yr"=>1988, "score"=>5.0},
			{"id"=>703, "title"=>"Rambo: First Blood Part II", "yr"=>1985, "score"=>4.8},
			{"id"=>806, "title"=>"Rambo III", "yr"=>1988, "score"=>3.7},
			{"id"=>814, "title"=>"Superman III", "yr"=>1983, "score"=>4.3},
			{"id"=>863, "title"=>"Superman IV: The Quest for Peace", "yr"=>1987, "score"=>3.1},
			{"id"=>868, "title"=>"European Vacation", "yr"=>1985, "score"=>5.0},
			{"id"=>949, "title"=>"Police Academy 4: Citizens on Patrol", "yr"=>1987, "score"=>3.1},
			{"id"=>1018, "title"=>"Popeye", "yr"=>1980, "score"=>4.7},
			{"id"=>1022, "title"=>"Police Academy 2: Their First Assignment", "yr"=>1985, "score"=>4.0},
			{"id"=>1024, "title"=>"Grease 2", "yr"=>1982, "score"=>3.3},
			{"id"=>1083, "title"=>"Cobra", "yr"=>1986, "score"=>4.0},
			{"id"=>1086, "title"=>"My Stepmother Is an Alien", "yr"=>1988, "score"=>4.7},
			{"id"=>1102, "title"=>"Earth Girls Are Easy", "yr"=>1989, "score"=>5.0},
			{"id"=>1107, "title"=>"Blue Lagoon, The", "yr"=>1980, "score"=>4.3},
			{"id"=>1148, "title"=>"Police Academy 3: Back in Training", "yr"=>1986, "score"=>3.4},
			{"id"=>1171, "title"=>"Caddyshack II", "yr"=>1988, "score"=>3.5},
			{"id"=>1279, "title"=>"Teen Wolf", "yr"=>1985, "score"=>5.0},
			{"id"=>1291, "title"=>"Caligula", "yr"=>1980, "score"=>4.3},
			{"id"=>1389, "title"=>"Halloween III: Season of the Witch", "yr"=>1982, "score"=>3.4},
			{"id"=>1390, "title"=>"Red Sonja", "yr"=>1985, "score"=>4.1},
			{"id"=>1399, "title"=>"Short Circuit 2", "yr"=>1988, "score"=>4.3},
			{"id"=>1470, "title"=>"Nightmare on Elm Street Part 2: Freddy's Revenge, A", "yr"=>1985, "score"=>4.4},
			{"id"=>1525, "title"=>"Nightmare on Elm Street 4: The Dream Master, A", "yr"=>1988, "score"=>4.8},
			{"id"=>1602, "title"=>"Children of the Corn", "yr"=>1984, "score"=>4.6},
			{"id"=>1605, "title"=>"Cocoon: The Return", "yr"=>1988, "score"=>4.8},
			{"id"=>1614, "title"=>"Friday the 13th Part 2", "yr"=>1981, "score"=>4.4},
			{"id"=>1639, "title"=>"Supergirl", "yr"=>1984, "score"=>3.7},
			{"id"=>1641, "title"=>"Cannonball Run II", "yr"=>1984, "score"=>3.5},
			{"id"=>1646, "title"=>"Over the Top", "yr"=>1987, "score"=>3.8},
			{"id"=>1650, "title"=>"Xanadu", "yr"=>1980, "score"=>4.3},
			{"id"=>1731, "title"=>"Halloween 4: The Return of Michael Myers", "yr"=>1988, "score"=>5.0},
			{"id"=>1745, "title"=>"Young Einstein", "yr"=>1988, "score"=>4.8},
			{"id"=>1758, "title"=>"Poltergeist II: The Other Side", "yr"=>1986, "score"=>4.8},
			{"id"=>1794, "title"=>"Raw Deal", "yr"=>1986, "score"=>4.7},
			{"id"=>1797, "title"=>"Friday the 13th Part 3: 3D", "yr"=>1982, "score"=>3.8})
	end

  it "hits the database exactly once" do
    expect{ subject }.to make_database_queries(count: 1)
  end
end

describe "vanity_projects" do
	subject { vanity_projects.as_json }
	it "retrieves the correct information" do
		expect(subject).to contain_exactly(
			{"id"=>1073, "title"=>"Zelig", "name"=>"Woody Allen"},
			{"id"=>921, "title"=>"Sleeper", "name"=>"Woody Allen"},
			{"id"=>1169, "title"=>"Sweet and Lowdown", "name"=>"Woody Allen"},
			{"id"=>1244, "title"=>"Small Time Crooks", "name"=>"Woody Allen"},
			{"id"=>1121, "title"=>"Everything You Always Wanted to Know About Sex", "name"=>"Woody Allen"},
			{"id"=>1318, "title"=>"Bananas", "name"=>"Woody Allen"},
			{"id"=>1648, "title"=>"Broadway Danny Rose", "name"=>"Woody Allen"},
			{"id"=>1544, "title"=>"New York Stories", "name"=>"Woody Allen"},
			{"id"=>1578, "title"=>"Take the Money and Run", "name"=>"Woody Allen"},
			{"id"=>1770, "title"=>"Midsummer Night's Sex Comedy, A", "name"=>"Woody Allen"},
			{"id"=>208, "title"=>"Annie Hall", "name"=>"Woody Allen"},
			{"id"=>642, "title"=>"Deconstructing Harry", "name"=>"Woody Allen"},
			{"id"=>1027, "title"=>"True Crime", "name"=>"Clint Eastwood"},
			{"id"=>769, "title"=>"Space Cowboys", "name"=>"Clint Eastwood"},
			{"id"=>812, "title"=>"Outlaw Josey Wales, The", "name"=>"Clint Eastwood"},
			{"id"=>1440, "title"=>"Firefox", "name"=>"Clint Eastwood"},
			{"id"=>1433, "title"=>"High Plains Drifter", "name"=>"Clint Eastwood"},
			{"id"=>1332, "title"=>"Pale Rider", "name"=>"Clint Eastwood"},
			{"id"=>1779, "title"=>"Sudden Impact", "name"=>"Clint Eastwood"},
			{"id"=>1518, "title"=>"Heartbreak Ridge", "name"=>"Clint Eastwood"},
			{"id"=>118, "title"=>"Unforgiven", "name"=>"Clint Eastwood"},
			{"id"=>651, "title"=>"Bridges of Madison County, The", "name"=>"Clint Eastwood"},
			{"id"=>657, "title"=>"Absolute Power", "name"=>"Clint Eastwood"},
			{"id"=>733, "title"=>"Bronx Tale, A", "name"=>"Robert De Niro"},
			{"id"=>762, "title"=>"Rocky II", "name"=>"Sylvester Stallone"},
			{"id"=>736, "title"=>"Rocky III", "name"=>"Sylvester Stallone"},
			{"id"=>607, "title"=>"Rocky IV", "name"=>"Sylvester Stallone"},
			{"id"=>109, "title"=>"Dances with Wolves", "name"=>"Kevin Costner"},
			{"id"=>635, "title"=>"Postman, The", "name"=>"Kevin Costner"},
			{"id"=>835, "title"=>"Throw Momma from the Train", "name"=>"Danny DeVito"},
			{"id"=>930, "title"=>"Bob Roberts", "name"=>"Tim Robbins"},
			{"id"=>946, "title"=>"History of the World: Part I", "name"=>"Mel Brooks"},
			{"id"=>1628, "title"=>"Silent Movie", "name"=>"Mel Brooks"},
			{"id"=>1624, "title"=>"High Anxiety", "name"=>"Mel Brooks"},
			{"id"=>730, "title"=>"Horse Whisperer, The", "name"=>"Robert Redford"},
			{"id"=>264, "title"=>"This Is Spinal Tap", "name"=>"Rob Reiner"},
			{"id"=>520, "title"=>"Dead Again", "name"=>"Kenneth Branagh"},
			{"id"=>1122, "title"=>"Heaven Can Wait", "name"=>"Warren Beatty"},
			{"id"=>1662, "title"=>"Reds", "name"=>"Warren Beatty"},
			{"id"=>567, "title"=>"Dick Tracy", "name"=>"Warren Beatty"},
			{"id"=>472, "title"=>"Star Trek V: The Final Frontier", "name"=>"William Shatner"},
			{"id"=>922, "title"=>"Gold Rush, The", "name"=>"Charles Chaplin"},
			{"id"=>589, "title"=>"Modern Times", "name"=>"Charles Chaplin"},
			{"id"=>715, "title"=>"Great Dictator, The", "name"=>"Charles Chaplin"},
			{"id"=>1374, "title"=>"Forget Paris", "name"=>"Billy Crystal"},
			{"id"=>1519, "title"=>"On Deadly Ground", "name"=>"Steven Seagal"},
			{"id"=>1792, "title"=>"Slacker", "name"=>"Richard Linklater"},
			{"id"=>1324, "title"=>"Prince of Tides, The", "name"=>"Barbra Streisand"},
			{"id"=>1258, "title"=>"Mirror Has Two Faces, The", "name"=>"Barbra Streisand"},
			{"id"=>1426, "title"=>"Defending Your Life", "name"=>"Albert Brooks"},
			{"id"=>40, "title"=>"Citizen Kane", "name"=>"Orson Welles"},
			{"id"=>522, "title"=>"Touch of Evil", "name"=>"Orson Welles"},
			{"id"=>1305, "title"=>"Orgazmo", "name"=>"Trey Parker"},
			{"id"=>111, "title"=>"South Park: Bigger, Longer and Uncut", "name"=>"Trey Parker"},
			{"id"=>143, "title"=>"Sling Blade", "name"=>"Billy Bob Thornton"},
			{"id"=>1341, "title"=>"Best in Show", "name"=>"Christopher Guest"},
			{"id"=>488, "title"=>"Beavis and Butt-head Do America", "name"=>"Mike Judge"},
			{"id"=>832, "title"=>"Buffalo '66", "name"=>"Vincent Gallo"},
			{"id"=>74, "title"=>"Vita &#232; bella, La", "name"=>"Roberto Benigni"},
			{"id"=>1745, "title"=>"Young Einstein", "name"=>"Yahoo Serious"})
	end
  it "hits the database exactly once" do
    expect{ subject }.to make_database_queries(count: 1)
  end
end

describe "starring(whazzername)" do
	let (:lester) { starring("lester stone")}
	let (:me) {starring("me book")}
	let (:ery) {starring("ery steep")}
	it "retrieves the correct information" do
		expect(lester).to contain_exactly(*Actor.find_by(name: "Sylvester Stallone").movies)
		expect(me).to contain_exactly(*Actor.find_by(name: "Mel Brooks").movies)
		expect(ery).to contain_exactly(*Actor.find_by(name: "Meryl Streep").movies)
	end

	it "hits the database exactly once" do
		expect{ lester }.to make_database_queries(count: 1)
		expect{ me }.to make_database_queries(count: 1)
		expect{ ery }.to make_database_queries(count: 1)
	end

end

describe "bad_years" do
	subject { bad_years }

	it "retrieves the correct information" do
		expect(subject).to contain_exactly(1947, 1932, 1965)
	end

  it "hits the database exactly once" do
    expect{ subject }.to make_database_queries(count: 1)
  end

end

describe "golden_age" do
	subject { golden_age }
	it "retrieves the correct information" do
		expect(subject).to be(1920)
	end

	 it "hits the database exactly once" do
    expect{ subject }.to make_database_queries(count: 1)
  end
end

describe "cast_list" do
	let(:star_wars) { cast_list("Star Wars") }
	let(:forrest_gump) { cast_list("Forrest Gump") }
	it "retrieves the correct information" do
		expect(star_wars.as_json).to contain_exactly(
			{"id"=>552, "name"=>"Mark Hamill"},
			{"id"=>6, "name"=>"Harrison Ford"},
			{"id"=>462, "name"=>"Carrie Fisher"},
			{"id"=>3234, "name"=>"Peter Cushing"},
			{"id"=>925, "name"=>"Alec Guinness"},
			{"id"=>1655, "name"=>"Anthony Daniels"},
			{"id"=>2881, "name"=>"Kenny Baker (I)"},
			{"id"=>3178, "name"=>"Peter Mayhew (II)"},
			{"id"=>3707, "name"=>"David Prowse"},
			{"id"=>5788, "name"=>"Jack Purvis"})
		expect(forrest_gump.as_json).to contain_exactly(
			{"id"=>8, "name"=>"Tom Hanks"},
			{"id"=>536, "name"=>"Robin Wright"},
			{"id"=>255, "name"=>"Gary Sinise"},
			{"id"=>1204, "name"=>"Mykelti Williamson"},
			{"id"=>369, "name"=>"Sally Field"})
	end

	 it "hits the database exactly once" do
    expect{ star_wars }.to make_database_queries(count: 1)
    expect{ forrest_gump }.to make_database_queries(count: 1)
  end
end

describe "costars" do
	let (:julie_andrews) { costars("Julie Andrews") }
	let (:kevin_bacon) { costars("Kevin Bacon")}
	it "retrieves the correct information" do
		expect(julie_andrews).to contain_exactly("Bo Derek", "Peter Arne", "Richard Haydn", "Peggy Wood", "Graham Stark", "Dee Wallace-Stone", "Alex Karras", "Ben Wright (I)", "Eleanor Parker (I)", "Robert Preston (I)", "James Garner", "Brian Dennehy", "Dudley Moore", "Sam J. Jones", "Don Calfa", "Deborah Rush", "Lesley Ann Warren", "John Rhys-Davies", "Robert Webber (I)", "Christopher Plummer")
		expect(kevin_bacon).to contain_exactly("Richard Marcus", "Edie McClurg", "Ed Harris", "Holland Taylor", "David Strathairn", "Minnie Driver", "William Windom", "Kevin Pollak", "Rex Everhart", "Reba McEntire", "Billy Crudup", "Aeryk Egan", "Greg Grunberg", "Mark Beech", "John Rothman", "Kevin Dunn (I)", "Ron Eldard", "Zachary David Cope", "Timothy Daly", "Miko Hughes", "Kimberly Scott", "Brad Dourif", "Tom Cruise", "Marc Macaulay", "Carrie Snodgress", "Olympia Dukakis", "Denise Richards", "Paul Reiser", "Adrienne King", "Elisabeth Shue", "Christian Slater", "Chris Penn", "Kathryn Erbe", "Tom Hanks", "Christopher Guest", "Mia Kirshner", "Victor Wong (III)", "Josh Brolin", "Bruno Kirby", "David Andrews (I)", "Tony Genaro", "Brad Renfro", "Paul Gleason (I)", "Terry Kinney", "Jeannine Taylor", "Bill Murray", "Brad Pitt", "Jason Patric", "Chris Ellis (I)", "Dustin Hoffman", "Richard Herd", "Steve Martin", "Kathleen Quinlan", "Martin Ferrero", "John C. Reilly", "Jennifer Aniston", "Kim Dickens", "Michael Tucker (I)", "Matt Dillon", "Mary Kate Schellhardt", "Stephanie Sawyer", "Faith Prince", "Michael McKean", "Stephen Tobolowsky", "Illeana Douglas", "Embeth Davidtz", "Dylan Baker", "Robert Wagner", "Xander Berkeley", "Stefan Gierasch", "Frankie Muniz", "Michael Gross (I)", "Robbi Morgan", "Daniel Stern", "Alec Baldwin", "William Devane", "Jack Nicholson", "Elizabeth Hoffman", "Ariana Richards", "Lori Singer", "John Candy", "Joseph Mazzello", "William H. Macy", "Oliver Platt", "Matt Craven", "Hope Davis", "Meryl Streep", "Julia Roberts", "Kiefer Sutherland", "John M. Jackson", "Joey Slotnick", "Finn Carter", "Kyra Sedgwick", "Dennis Dugan", "Ellen Barkin", "Peter McRobbie", "William Baldwin", "Gary Sinise", "Bill Paxton", "Elizabeth McGovern", "Laila Robins", "J.T. Walsh", "Mickey Rourke", "R. Lee Ermey", "Charlotte Stewart", "Robert De Niro", "Gary Oldman", "J.A. Preston", "John Lithgow", "Bibi Besch", "Joshua Rudoy", "Dianne Wiest", "Luke Wilson", "Jay Mohr", "John Ashton (I)", "Demi Moore", "Betsy Palmer", "Benjamin Bratt", "Fred Ward", "Larry Hankin", "Neve Campbell", "Diane Lane", "Sarah Jessica Parker", "Theresa Russell", "Lee McCain", "Steve Guttenberg")
	end

	it "hits the database at most twice" do
    expect{ julie_andrews }.to make_database_queries(count: 1..2)
    expect{ kevin_bacon }.to make_database_queries(count: 1..2)
  end
end

describe "most_supportive" do
	subject { most_supportive.as_json }
	it "retrieves the correct information" do
		expect(subject).to contain_exactly(
			{"id"=>16, "name"=>"Gene Hackman", "roles"=>20},
			{"id"=>44, "name"=>"Robert Duvall", "roles"=>20})
	end
	it "hits the database exactly once" do
		expect{ subject }.to make_database_queries(count: 1)
	end
end

describe "what_was_that_one_with" do
	let(:ben_and_matt) {what_was_that_one_with([
		"Ben Affleck", "Matt Damon"
		]).as_json}

	let(:geena_and_susan) {what_was_that_one_with([
		"Geena Davis", "Susan Sarandon"
		]).as_json}

	it "retrieves the correct information" do
		expect(ben_and_matt).to contain_exactly(
			{"id"=>1449, "title"=>"School Ties"},
			{"id"=>29, "title"=>"Good Will Hunting"},
			{"id"=>98, "title"=>"Dogma"},
			{"id"=>95, "title"=>"Chasing Amy"})

		expect(geena_and_susan).to eq([
			{"id"=>201, "title"=>"Thelma & Louise"}])
	end

	it "hits the database exactly once" do
		expect{ ben_and_matt }.to make_database_queries(count: 1)
		expect{ geena_and_susan }.to make_database_queries(count: 1)
	end

end

describe "actor_out_of_work" do
	subject { actor_out_of_work }
	it "retrieves the correct information" do
		expect(subject).to eq(770)
	end

	it "hits the database exactly once" do
		expect{ subject }.to make_database_queries(count: 1)
	end
end

describe "longest_career" do
		subject { longest_career.as_json }
	it "retrieves the correct information" do
		expect(subject).to eq(
			{"id"=>3537, "name"=>"Deems Taylor", "career"=>59})
	end

	it "hits the database exactly once" do
		expect{ subject }.to make_database_queries(count: 1)
	end
end
