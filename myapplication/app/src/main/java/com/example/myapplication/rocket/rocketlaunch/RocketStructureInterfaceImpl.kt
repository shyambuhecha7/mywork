package com.example.androidkotlin.rocket.rocketlaunch

class RocketStructureInterfaceImpl() : RocketStructureInterface {
    override fun presentRocketStructure() {
        println(
            "Rocket structure: \n " +
                    "nozzle: it is front part of rocket \n" +
                    "bodyTube: it is Core part of Rocket Structure \n" +
                    "fins : it is end part of Rocket Structure"
        )
    }
}