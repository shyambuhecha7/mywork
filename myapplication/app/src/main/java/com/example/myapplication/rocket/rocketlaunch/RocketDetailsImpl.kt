package com.example.androidkotlin.rocket.rocketlaunch

class RocketDetailsImpl() : RocketDetailsInterface {
    override fun showRocketDetails(
        rocketName: String,
        rocketModel: String,
        rocketLaunchDate: String,
    ) {
        println(" Rocket Name: $rocketName \n Rocket Model: $rocketModel \n Rocket Launch Date: $rocketLaunchDate")
    }
}
