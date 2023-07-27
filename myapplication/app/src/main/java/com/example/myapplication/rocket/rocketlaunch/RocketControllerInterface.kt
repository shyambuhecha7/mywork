package com.example.androidkotlin.rocket.rocketlaunch

interface RocketControllerInterface {
    fun startRocketLaunch()
    fun targetReach(reach: Boolean)
    fun startIgnition()
    fun rocketBoostersBurn()
    fun rocketLiftOff()
    fun rocketEnterInSpace()

    fun travelDistance(travelDistance: Double)

}
