package com.example.androidkotlin.rocket.satelitelaunch

import com.example.androidkotlin.rocket.fueltank.FuelTankController
import com.example.androidkotlin.rocket.rocketlaunch.RocketStatus

open class SatelliteLauncher(): LaunchOfSatellite, FuelTankController() {

    private fun travelDistance(distanceInSpace: Long) {
       val fuelCapacity = (distanceInSpace * 100) / 5000
       println("Fuel Capacity: ${fuelTankCapacity-fuelCapacity}")
    }

    override fun thrustRocket() {
        travelDistance(0)
        println("Launching.....")
        rocketPowerAscent()
    }

    override fun rocketPowerAscent() {
        travelDistance(100)
        println("Burn fuel...")
        rocketStaging()
    }

    override fun rocketStaging() {
        travelDistance(2000)
        println("release Body Tube... ")
        rocketUpperStageBurn()
    }

    override fun rocketUpperStageBurn() {
        travelDistance(2500)
        println("Nozzle Burn... ")
        engineCutOut()
    }

    override fun engineCutOut() {
        travelDistance(3000)
        println("release Engine...")
        println("Status: ${RocketStatus.SatelliteLaunched}")
    }
}
