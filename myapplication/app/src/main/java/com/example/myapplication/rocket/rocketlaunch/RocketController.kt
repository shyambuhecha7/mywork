package com.example.androidkotlin.rocket.rocketlaunch

import com.example.androidkotlin.rocket.fueltank.FuelTankController

open class RocketController() : RocketControllerInterface, FuelTankController() {

    override fun startRocketLaunch() {
        travelDistance(0.0)
        println("Status: ${RocketStatus.StartLaunching}")
        startIgnition()
    }

    override fun startIgnition() {
        rocketBoostersBurn()
        println("Start Ignition...")
        travelDistance(200.0)
    }

    override fun rocketBoostersBurn() {
        rocketLiftOff()
        println("Rocket Booster Burn...")
        travelDistance(800.0)
        println("Status: ${RocketStatus.Lifted}")
    }

    override fun rocketLiftOff() {
        rocketEnterInSpace()
        println("Rocket liftOff...")
        travelDistance(1300.0)
    }

    override fun rocketEnterInSpace() {
        println("")
        travelDistance(2000.0)
    }

    override fun targetReach(reach: Boolean) {
        travelDistance(2500.0)
        println("Rocket Status: ${RocketStatus.RocketLaunched}")
    }

    override fun travelDistance(travelDistance: Double) {
        val fuelCapacity = (travelDistance * 100) / 5000
        println("Fuel Capacity: ${fuelTankCapacity - fuelCapacity}")
    }

}
