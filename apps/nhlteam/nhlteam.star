"""
Applet: HelloWorld
Summary: Hello World
Description: Hello World.
Author: jwise
"""

load("render.star", "render")
load("schema.star", "schema")

DEFAULT_WHO = "world!"
load("http.star", "http")

def main(config):
	selectedTeam = config.get("team", "cbj")
	img = http.get('https://a.espncdn.com/combiner/i?img=/i/teamlogos/nhl/500/' + selectedTeam + '.png').body()
	return render.Root(
        delay = 500,
        child = render.Box(
            child = render.Animation(
                children = [
                    render.Image(
                        src = img,
                        width = 32,
                        height = 32,
                    ),
                ],
            ),
        ),
    )


def get_schema():
    teamOptions = [
    		schema.Option(
    			display = "Anaheim Ducks",
    			value = "ANA",
    		),
    		schema.Option(
    			display = "Arizona Coyotes",
    			value = "ARI",
    		),
    		schema.Option(
    			display = "Boston Bruins",
    			value = "BOS",
    		),
    		schema.Option(
    			display = "Buffalo Sabres",
    			value = "BUF",
    		),
    		schema.Option(
    			display = "Calgary Flames",
    			value = "CGY",
    		),
    		schema.Option(
    			display = "Carolina Hurricanes",
    			value = "CAR",
    		),
    		schema.Option(
    			display = "Chicago Blackhawks",
    			value = "CHI",
    		),
    		schema.Option(
    			display = "Colorado Avalanche",
    			value = "COL",
    		),
    		schema.Option(
    			display = "Columbus Blue Jackets",
    			value = "CBJ",
    		),
    		schema.Option(
    			display = "Dallas Stars",
    			value = "DAL",
    		),
    		schema.Option(
    			display = "Detroit Red Wings",
    			value = "DET",
    		),
    		schema.Option(
    			display = "Edmonton Oilers",
    			value = "EDM",
    		),
    		schema.Option(
    			display = "Florida Panthers",
    			value = "FLA",
    		),
    		schema.Option(
    			display = "Los Angeles Kings",
    			value = "LA",
    		),
    		schema.Option(
    			display = "Minnesota Wild",
    			value = "MIN",
    		),
    		schema.Option(
    			display = "Montreal Canadiens",
    			value = "MTL",
    		),
    		schema.Option(
    			display = "Nashville Predators",
    			value = "NSH",
    		),
    		schema.Option(
    			display = "New Jersey Devils",
    			value = "NJ",
    		),
    		schema.Option(
    			display = "New York Islanders",
    			value = "NYI",
    		),
    		schema.Option(
    			display = "New York Rangers",
    			value = "NYR",
    		),
    		schema.Option(
    			display = "Ottawa Senators",
    			value = "OTT",
    		),
    		schema.Option(
    			display = "Philadelphia Flyers",
    			value = "PHI",
    		),
    		schema.Option(
    			display = "Pittsburgh Penguins",
    			value = "PIT",
    		),
    		schema.Option(
    			display = "San Jose Sharks",
    			value = "SJ",
    		),
    		schema.Option(
    			display = "Seattle Kraken",
    			value = "SEA",
    		),
    		schema.Option(
    			display = "St. Louis Blues",
    			value = "STL",
    		),
    		schema.Option(
    			display = "Tampa Bay Lightning",
    			value = "TB",
    		),
    		schema.Option(
    			display = "Toronto Maple Leafs",
    			value = "TOR",
    		),
    		schema.Option(
    			display = "Vancouver Canucks",
    			value = "VAN",
    		),
    		schema.Option(
    			display = "Vegas Golden Knights",
    			value = "VGK",
    		),
    		schema.Option(
    			display = "Washington Capitals",
    			value = "WSH",
    		),
    		schema.Option(
    			display = "Winnipeg Jets",
    			value = "WPG",
    		)
    	]
    return schema.Schema(
        version = "1",
        fields = [
            schema.Dropdown(
                id = "team",
                name = "Team",
                desc = "Pick a team.",
				icon = "gear",
				default = teamOptions[0].value,
				options = teamOptions
            ),
        ],
    )
