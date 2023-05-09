package com.example.androidkotlin.rocketsystem

class Main {
}

fun main() {
    val fuelSystem = FuelSystem(100)
    val rocket = Rocket(fuelSystem,100.0)

    rocket.launch()
    fuelSystem.addFuel(50)
    rocket.launch()

    val satellite = Satellite(SatelliteType.COMMUNICATION,"")
    println("Launching ${satellite.getType()} satellite on ${satellite.getLaunchDate()}")
}