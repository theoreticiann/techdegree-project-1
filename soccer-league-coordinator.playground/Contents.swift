/* PLAYERS DATA
 ========================
 */


/* Empty array to hold the info of all players */
let players: [[String: Any]] = []


/* Complete info of all 18 players in seperate Dictionary */

let player1: [String: Any] = ["name" : "Joe Smith", "Height" : 42, "isExperienced" : true, "guardians" : "Jim and Jan Smith"]

let player2: [String: Any] = ["name": "Jill Tanner", "height": 36, "isExperienced": true, "guardians": "Clara Tanner"]

let player3: [String: Any] = ["name": "Bill Bon", "height": 43, "isExperienced": true, "guardians": "Sara and Jenny Bon"]

let player4: [String: Any] = ["name": "Eva Gordon","height": 45, "isExperienced": false, "guardians": "Wendy and Mike Gordon"]

let player5: [String: Any] = ["name":"Matt Gill", "height": 40, "isExperienced": false, "guardians": "Charles and Sylvia Gill"]

let player6: [String: Any] = ["name":"Kimmy Stein", "height": 41, "isExperienced": false, "guardians": "Bill and Hillary Stein"]

let player7: [String: Any] = ["name":"Sammy Adams", "height": 45, "isExperienced": false, "guardians": "Jeff Adams"]

let player8: [String: Any] = ["name":"Karl Saygan", "height": 42, "isExperienced": true, "guardians": "Heather Bledsoe"]

let player9: [String: Any] = ["name":"Suzane Greenberg", "height": 44, "isExperienced": true, "guardians": "Henrietta Dumas"]

let player10: [String: Any] = ["name":"Sal Dali", "height": 41, "isExperienced": false, "guardians": "Gala Dali"]

let player11: [String: Any] = ["name":"Joe Kavalier", "height": 39, "isExperienced": false, "guardians": "Sam and Elaine Kavalier"]

let player12: [String: Any] = ["name":"Ben Finkelstein", "height" : 44, "isExperienced": false, "guardians": "Aaron and Jill Finkelstein"]

let player13: [String: Any] = ["name":"Diego Soto", "height": 41, "isExperienced": true, "guardians": "Robin and Sarika Soto"]

let player14: [String: Any] = ["name":"Chloe Alaska", "height": 47, "isExperienced": false, "guardians": "David and Jamie Alaska"]

let player15: [String: Any] = ["name":"Arnold Willis", "height": 43, "isExperienced": false, "guardians": "Claire Willis"]

let player16: [String: Any] = ["name":"Phillip Helm", "height": 44, "isExperienced": true, "guardians": "Thomas Helm and Eva Jones"]

let player17: [String: Any] = ["name":"Les Clay", "height": 42, "isExperienced": true, "guardians": "Wynonna Brown"]

let player18: [String: Any] = ["name":"Herschel Krustofski", "height": 45, "isExperienced": true, "guardians": "Hyman and Rachel Krustofski"]



// Collection includes all 18 players data

var totalPlayers = [player1, player2, player3, player4, player5,player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]


// empty collection to store expereince players and notexperiences players.

var experiencedPlayers: [[String:Any]] = []
var notexperiencedPlayers: [[String:Any]] = []


// Logic to store experienced players and not experienced players
for player in totalPlayers {
    if let isPlayerExperienced = player["isExperienced"] as? Bool {
        if isPlayerExperienced == true {
            experiencedPlayers.append(player)
        } else {
            notexperiencedPlayers.append(player)
        }
    }
}

// empty collections to store team names.

var teamDragons: [[String:Any]] = []
var teamSharks: [[String:Any]] = []
var teamRaptors: [[String:Any]] = []


// Total number of team in this league

var theSoccerLeague = [teamDragons, teamRaptors, teamSharks]


// Logic to sort and store experienced players

for player in experiencedPlayers {
    if teamDragons.count < teamSharks.count {
        teamDragons.append(player)
    } else if teamSharks.count < teamRaptors.count {
        teamSharks.append(player)
    } else {
        teamRaptors.append(player)
    }
}


// Login to sort and store not experienced players

for player in notexperiencedPlayers {
    if teamDragons.count < teamSharks.count {
        teamDragons.append(player)
    } else if teamSharks.count < teamRaptors.count {
        teamSharks.append(player)
    } else {
        teamRaptors.append(player)
    }
}


/* PERSONALIZED LETTER TO PARENTS
==================================
 */

// Team practice time and dates

let teamDragonsPractice = ("March 17, 1pm")
let teamSharksPractice = ("March 17, 3pm")
let teamRaptorsPractice = ("March 18, 1pm")


// Creating a team name for personalized letter to guardians

var dragonsTeamname = "Dragons"
var sharksTeamname = "Sharks"
var raptorsTeamname = "Raptors"


// empty array to store letter

var letters: [String] = []


// Personalized letter to team dragons

for player in teamDragons {
    if let guardiansname = player["guardians"] as? String, let playername = player["name"] as? String {
        let leagueLetter = "Dear \(guardiansname), This is to let you know that your son \(playername) is selected for school football team and he will be playing for Team \(dragonsTeamname). First team practice will starts at \(teamDragonsPractice). Thanks"
        letters.append(leagueLetter)
    }
}


// Personalized letter to team Sharks

for player in teamSharks {
    if let guardiansname = player["guardians"] as? String, let playername = player["name"] as? String {
        let leagueLetter = "Dear \(guardiansname), This is to let you know that your son \(playername) is selected for school football team and he will be playing for Team \(dragonsTeamname). First team practice will starts at \(teamDragonsPractice). Thanks"
        letters.append(leagueLetter)
    }
}


// personalized letter to team Raptors

for player in teamRaptors {
    if let guardiansname = player["guardians"] as? String, let playername = player["name"] as? String {
        let leagueLetter = "Dear \(guardiansname), This is to let you know that your son \(playername) is selected for school football team and he will be playing for Team \(dragonsTeamname). First team practice will starts at \(teamDragonsPractice). Thanks"
        letters.append(leagueLetter)
    }
}

// Print the letters to guardians

for letter in letters {
    print(letter)
}
