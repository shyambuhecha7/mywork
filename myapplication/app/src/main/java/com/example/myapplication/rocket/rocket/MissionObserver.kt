package com.example.androidkotlin.rocket

fun interface MissionObserver {
    fun onLaunchSuccess(): Boolean
}