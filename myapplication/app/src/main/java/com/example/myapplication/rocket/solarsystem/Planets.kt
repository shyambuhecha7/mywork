package com.example.androidkotlin.rocket.solarsystem

enum class Planets(val nameOfPlanet: String, var distanceOfPlanet: Long, val launchingAngleOfRocket: Double) {
    Mercury("Mercury",2000,60.0),
    Venus("Venus",1000,80.28),
    Mars("Mars",1200,80.2),
    Jupiter("Jupiter",2000,60.0),
    Saturn("Saturn",3000,52.8),
    Neptune("Neptune",5000,45.0)
}