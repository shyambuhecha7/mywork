package com.example.androidkotlin.rocket.solarsystem

 interface LaunchRocketToPlanet {

    fun calculateTimeOfSpaceTravel(distanceOfPlanetsFromEarth: Planets): Double

    fun launchRocketTo(nameOfTargetPlanet: Planets)
}
