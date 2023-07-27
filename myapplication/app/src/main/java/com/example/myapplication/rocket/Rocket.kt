package com.example.androidkotlin.rocket

//import com.example.androidkotlin.rocket.rocketlaunch.RocketController
//import com.example.androidkotlin.rocket.rocketlaunch.RocketControllerInterface
//import com.example.androidkotlin.rocket.satelitelaunch.LaunchSatellite
//import com.example.androidkotlin.rocket.satelitelaunch.SatelliteLauncher
//import com.example.androidkotlin.rocket.solarsystem.Astronaut
//import com.example.androidkotlin.rocket.solarsystem.LaunchRocketToPlanet
//import com.example.androidkotlin.rocket.solarsystem.Planets
//import com.example.androidkotlin.rocket.solarsystem.RocketLauncherFromEarth
//
//class Rocket(
//    private val rocketController: RocketControllerInterface,
//    private val launchSatellite: LaunchSatellite,
//    private val launchRocketToPlanet: LaunchRocketToPlanet,
//): RocketControllerInterface by rocketController,
//    LaunchSatellite by launchSatellite,
//    LaunchRocketToPlanet by launchRocketToPlanet {
//}
//
//fun main() {
//    val rocketController = RocketController()
//    val launchSatellite = SatelliteLauncher()
//    val launchRocketToPlanet = RocketLauncherFromEarth()
//
//    val rocket = Rocket(
//        rocketController,
//        launchSatellite,
//        launchRocketToPlanet
//    )
//    rocket.startRocketLaunch()
//
//    rocket.targetReach(true)
//
//    rocket.thrustRocket()
//
//    rocket.startRocketLaunch()
//
//    rocket.launchRocketTo(Planets.Mercury)
//
//    val astronaut = Astronaut("Nil ArmStrong")
//    astronaut.moveForward(10)
//    astronaut.moveBackward(15)
//    println(astronaut.totalDistance)
//}
