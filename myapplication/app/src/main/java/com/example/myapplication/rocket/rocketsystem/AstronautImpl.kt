package com.example.myapplication.rocket.rocketsystem

import com.example.androidkotlin.rocketsystem.AstronautInterface

class Astronaut(override val name: String) : AstronautInterface {
    override fun performSpaceWalk() {
        println("Walk in Space")
    }
}