package com.example.androidkotlin.rocketsystem

class Rocket(private  val fuelSystem: FuelSystem, private var maxSpeed: Double) {
    private var speed: Double = 0.0
    private var distance: Double = 0.0
    private var time: Double = 0.0

    fun launch() {
        if(fuelSystem.useFuel(10)) {
            speed += 10.0
            distance += speed
            time += 1.0
            println("Rocket launched at speed $speed m/s, distance travel $distance m, time elapsed $time s")
        }else {
            println("Rocket cannot launch due to insufficient fuel")
        }
    }

    fun getSpeed(): Double {
        return speed
    }

    fun getDistance(): Double {
        return distance
    }

    fun getTime(): Double {
        return time
    }

    fun setSpeedLimit(newLimit: Double) {
        if(newLimit< maxSpeed) {
            maxSpeed = newLimit
        }
    }
}