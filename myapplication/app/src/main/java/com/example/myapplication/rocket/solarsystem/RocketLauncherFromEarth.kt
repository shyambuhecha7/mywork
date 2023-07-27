package com.example.androidkotlin.rocket.solarsystem

open class RocketLauncherFromEarth : LaunchRocketToPlanet {

    override fun calculateTimeOfSpaceTravel(distanceOfPlanetsFromEarth: Planets): Double {
        val time = distanceOfPlanetsFromEarth.distanceOfPlanet / 100
        println("Rocket Take $time Hours to reach ${distanceOfPlanetsFromEarth.nameOfPlanet} from the Earth....")
        return time.toDouble()
    }

    override fun launchRocketTo(nameOfTargetPlanet: Planets) {
        println("Target: $nameOfTargetPlanet")
        nameOfTargetPlanet.distanceOfPlanet
        calculateTimeOfSpaceTravel(nameOfTargetPlanet).let { println(it)}
    }
}