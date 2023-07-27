package com.example.androidkotlin.rocket

import com.example.androidkotlin.rocket.rocketlaunch.RocketController
import com.example.androidkotlin.rocket.satelitelaunch.SatelliteLauncher
import com.example.androidkotlin.rocket.solarsystem.LaunchRocketToPlanet
import com.example.androidkotlin.rocket.solarsystem.Planets

class RocketLauncher(
    private val rocketController: RocketController,
    private val satelliteLauncher: SatelliteLauncher,
    private val rocketLaunchToPlanet: LaunchRocketToPlanet
) {

    fun selectLaunch(launchType: Launch) = when (launchType) {
        Launch.Rocket -> rocketController.startRocketLaunch()
        Launch.Satellite -> satelliteLauncher.thrustRocket()
        Launch.Rover -> rocketLaunchToPlanet.launchRocketTo(Planets.Mercury)
    }
}
