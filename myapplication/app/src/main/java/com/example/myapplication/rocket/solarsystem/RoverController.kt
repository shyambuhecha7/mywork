package com.example.androidkotlin.rocket.solarsystem

class RoverController: RoverControlInterface {
    var totalDistance = 0
    override fun moveLeft(distance: Int) {
        totalDistance += distance
        totalTravelDistance()
    }

    override fun moveRight(distance: Int) {
        totalDistance += distance
        totalTravelDistance()
    }

    override fun moveForward(distance: Int) {
        totalDistance += distance
        totalTravelDistance()
    }

    override fun moveBackward(distance: Int) {
        totalDistance += distance
        totalTravelDistance()
    }

    override fun totalTravelDistance() {
        println("Rover travel total distance: $totalDistance")
    }

}