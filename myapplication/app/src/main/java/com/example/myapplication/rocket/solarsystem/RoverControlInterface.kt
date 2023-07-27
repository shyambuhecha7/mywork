package com.example.androidkotlin.rocket.solarsystem

interface RoverControlInterface {

    fun moveLeft(distance: Int)

    fun moveRight(distance: Int)

    fun moveForward(distance: Int)

    fun moveBackward(distance: Int)

    fun totalTravelDistance()
}