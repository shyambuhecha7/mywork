package com.example.androidkotlin.rocket

class Rocket(
    val name: String,
    private val costOfFuel: Long,
    private val costOfNoseCone: Long,
    private val costOfRocketBody: Long,
    private val costOfEngine: Long
) {

    val detailsOfRocketBody = mapOf(
        "Nose cone" to "it is carry astronaut and other explosives",
        "Fins" to "it help to rocket flying strength.", "Rocket body" to "it hold the engine",
        "Engine" to "Engine burn fuel using oxidation."
    )

    val costOfRocket: Long
        get() = costOfRocketBody + costOfNoseCone + costOfFuel + costOfEngine






}
