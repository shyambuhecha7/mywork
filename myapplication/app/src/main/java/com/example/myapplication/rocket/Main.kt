package com.example.androidkotlin.rocket

import com.example.androidkotlin.rocket.rocketlaunch.RocketController
import com.example.androidkotlin.rocket.satelitelaunch.SatelliteLauncher
import com.example.androidkotlin.rocket.solarsystem.Astronaut
import com.example.androidkotlin.rocket.solarsystem.RocketLauncherFromEarth

fun main() {
    val rocketController = RocketController()
    val satelliteLauncher = SatelliteLauncher()
    val rocketLaunchToPlanet = RocketLauncherFromEarth()
    val rocketLauncher = RocketLauncher(rocketController, satelliteLauncher, rocketLaunchToPlanet )
    rocketLauncher.selectLaunch(Launch.Satellite)

    val astronaut: Astronaut = Astronaut("Shyam")
    astronaut.roverRemote.moveRight(10)
    astronaut.roverRemote.moveForward(15)
    astronaut.roverRemote.moveRight(20)
}
