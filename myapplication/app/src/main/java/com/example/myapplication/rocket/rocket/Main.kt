package com.example.androidkotlin.rocket

fun main() {

    val rocket = Rocket("Falcon 9",1000000,250000,500000,800000)
    println("Cost of Rocket: ${rocket.costOfRocket}")
    RocketLaunch(rocket, object : LaunchObserver {
        override fun onLaunchAborted(result: OnLaunchResult) {
            println("Launching aborted: ${result.message}")
        }
    }).startLaunching()
}