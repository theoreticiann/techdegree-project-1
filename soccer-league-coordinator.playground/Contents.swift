/* PLAYERS DATA
 ========================
 */


/* Empty array to hold the info of all players */
let player: [[String: Any]] = []


/* Complete info of all 18 players in seperate Dictionary */

let player1: [String: Any] = ["Name" : "Joe Smith", "Height" : 42, "isExperienced" : true, "Guardians" : "Jim and Jan Smith"]

let player2: [String: Any] = ["Name": "Jill Tanner", "Height": 36, "isExperienced": true, "Guardians": "Clara Tanner"]

let player3: [String: Any] = ["Name": "Bill Bon", "Height": 43, "isExperienced": true, "Guardians": "Sara and Jenny Bon"]

let player4: [String: Any] = ["Name": "Eva Gordon","Height": 45, "isExperienced": false, "Guardians": "Wendy and Mike Gordon"]

let player5: [String: Any] = ["Name":"Matt Gill", "Heihgt": 40, "isExperienced": false, "Guardians": "Charles and Sylvia Gill"]

let player6: [String: Any] = ["Name":"Kimmy Stein", "Heihgt": 41, "isExperienced": false, "Guardians": "Bill and Hillary Stein"]

let player7: [String: Any] = ["Name":"Sammy Adams", "Heihgt": 45, "isExperienced": false, "Guardians": "Jeff Adams"]

let player8: [String: Any] = ["Name":"Karl Saygan", "Heihgt": 42, "isExperienced": true, "Guardians": "Heather Bledsoe"]

let player9: [String: Any] = ["Name":"Suzane Greenberg", "Heihgt": 44, "isExperienced": true, "Guardians": "Henrietta Dumas"]

let player10: [String: Any] = ["Name":"Sal Dali", "Heihgt": 41, "isExperienced": false, "Guardians": "Gala Dali"]

let player11: [String: Any] = ["Name":"Joe Kavalier", "Heihgt": 39, "isExperienced": false, "Guardians": "Sam and Elaine Kavalier"]

let player12: [String: Any] = ["Name":"Ben Finkelstein", "Heihgt" : 44, "isExperienced": false, "Guardians": "Aaron and Jill Finkelstein"]

let player13: [String: Any] = ["Name":"Diego Soto", "Heihgt": 41, "isExperienced": true, "Guardians": "Robin and Sarika Soto"]

let player14: [String: Any] = ["Name":"Chloe Alaska", "Heihgt": 47, "isExperienced": false, "Guardians": "David and Jamie Alaska"]

let player15: [String: Any] = ["Name":"Arnold Willis", "Heihgt": 43, "isExperienced": false, "Guardians": "Claire Willis"]

let player16: [String: Any] = ["Name":"Phillip Helm", "Heihgt": 44, "isExperienced": true, "Guardians": "Thomas Helm and Eva Jones"]

let player17: [String: Any] = ["Name":"Les Clay", "Heihgt": 42, "isExperienced": true, "Guardians": "Wynonna Brown"]

let player18: [String: Any] = ["Name":"Herschel Krustofski", "Heihgt": 45, "isExperienced": true, "Guardians": "Hyman and Rachel Krustofski"]



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

var dragonsTeamName = "Dragons"
var sharksTeamName = "Sharks"
var raptorsTeamName = "Raptors"


// empty array to store letter

var letters: [String] = []


// Personalized letter to team dragons

for player in teamDragons {
    if let guardiansName = player["Guardians"] as? String, let playerName = player["Name"] as? String {
        let leagueLetter = "Dear \(guardiansName), This is to let you know that your son \(playerName) is selected for school football team and he will be playing for Team \(dragonsTeamName). First team practice will starts at \(teamDragonsPractice). Thanks"
        letters.append(leagueLetter)
    }
}


// Personalized letter to team Sharks

for player in teamSharks {
    if let guardiansName = player["Guardians"] as? String, let playerName = player["Name"] as? String {
        let leagueLetter = "Dear \(guardiansName), This is to let you know that your son \(playerName) is selected for school football team and he will be playing for Team \(dragonsTeamName). First team practice will starts at \(teamDragonsPractice). Thanks"
        letters.append(leagueLetter)
    }
}


// personalized letter to team Raptors

for player in teamRaptors {
    if let guardiansName = player["Guardians"] as? String, let playerName = player["Name"] as? String {
        let leagueLetter = "Dear \(guardiansName), This is to let you know that your son \(playerName) is selected for school football team and he will be playing for Team \(dragonsTeamName). First team practice will starts at \(teamDragonsPractice). Thanks"
        letters.append(leagueLetter)
    }
}

// Print the letters to guardians

for letter in letters {
    print(letter)
}
