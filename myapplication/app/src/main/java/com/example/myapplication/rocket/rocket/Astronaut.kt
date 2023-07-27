package com.example.androidkotlin.rocket

@JvmInline
value class Astronaut(private val nameOfAstronaut: String) {
    fun performPreLaunchChecklist() {
        println("$nameOfAstronaut is performing pre-launch check....")

    }
}