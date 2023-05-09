package com.example.androidkotlin.rocketsystem

class FuelSystem(private var fuel: Int) {

    fun addFuel(amount: Int) {
        fuel += amount
    }

    fun useFuel(amount: Int): Boolean {
        if(fuel >= amount) {
            fuel -= amount
            return true
        }
        return false
    }

    fun getFuelLevel(): Int {
        return fuel
    }
}