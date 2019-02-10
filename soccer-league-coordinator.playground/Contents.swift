import UIKit

var str = "Hello, playground"


/* Players Data
 ========================
 */


/* empty array to hold the info of all players */
let player: [[String: Any]] = []


/* info of all 18 players in seperate Dictionary */

let player1: [String: Any] = ["Name" : "Joe Smith", "Height" : 42, "Experience" : true, "Guardians" : "Jim and Jan Smith"]

let player2: [String: Any] = ["Name": "Jill Tanner", "Height": 36, "Experience": true, "Guardians": "Clara Tanner"]

let player3: [String: Any] = ["Name": "Bill Bon", "Height": 43, "Experience": true, "Guardians": "Sara and Jenny Bon"]

let player4: [String: Any] = ["Name": "Eva Gordon","Height": 45, "Experience": false, "Guardians": "Wendy and Mike Gordon"]

let player5: [String: Any] = ["Name":"Matt Gill", "Heihgt": 40, "Experience": false, "Guardians": "Charles and Sylvia Gill"]

let player6: [String: Any] = ["Name":"Kimmy Stein", "Heihgt": 41, "Experience": false, "Guardians": "Bill and Hillary Stein"]

let player7: [String: Any] = ["Name":"Sammy Adams", "Heihgt": 45, "Experience": false, "Guardians": "Jeff Adams"]

let player8: [String: Any] = ["Name":"Karl Saygan", "Heihgt": 42, "Experience": true, "Guardians": "Heather Bledsoe"]

let player9: [String: Any] = ["Name":"Suzane Greenberg", "Heihgt": 44, "Experience": true, "Guardians": "Henrietta Dumas"]

let player10: [String: Any] = ["Name":"Sal Dali", "Heihgt": 41, "Experience": false, "Guardians": "Gala Dali"]

let player11: [String: Any] = ["Name":"Joe Kavalier", "Heihgt": 39, "Experience": false, "Guardians": "Sam and Elaine Kavalier"]

let player12: [String: Any] = ["Name":"Ben Finkelstein", "Heihgt" : 44, "Experience": false, "Guardians": "Aaron and Jill Finkelstein"]

let player13: [String: Any] = ["Name":"Diego Soto", "Heihgt": 41, "Experience": true, "Guardians": "Robin and Sarika Soto"]

let player14: [String: Any] = ["Name":"Chloe Alaska", "Heihgt": 47, "Experience": false, "Guardians": "David and Jamie Alaska"]

let player15: [String: Any] = ["Name":"Arnold Willis", "Heihgt": 43, "Experience": false, "Guardians": "Claire Willis"]

let player16: [String: Any] = ["Name":"Phillip Helm", "Heihgt": 44, "Experience": true, "Guardians": "Thomas Helm and Eva Jones"]

let player17: [String: Any] = ["Name":"Les Clay", "Heihgt": 42, "Experience": true, "Guardians": "Wynonna Brown"]

let player18: [String: Any] = ["Name":"Herschel Krustofski", "Heihgt": 45, "Experience": true, "Guardians": "Hyman and Rachel Krustofski"]



// Collection includes all 18 players data

var players = [player1, player2, player3, player4, player5,player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]

// empty collection to store expereince players and notexperiences players.

var experiencedPlayers: [[String:Any]] = []
var notexperiencedPlayers: [[String:Any]] = []

// empty collections to store team names.

var teamDragon: [[String:Any]] = []
var teamSharks: [[String:Any]] = []
var teamRaptors: [[String:Any]] = []


