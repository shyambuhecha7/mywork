package com.example.androidkotlin.rocketsystem

class Satellite(private val type: SatelliteType, private val launchDate: String) {
    fun getType(): SatelliteType {
        return type
    }

    fun getLaunchDate(): String {
        return launchDate
    }
}