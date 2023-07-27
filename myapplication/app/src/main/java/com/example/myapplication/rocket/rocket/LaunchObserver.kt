package com.example.androidkotlin.rocket

interface LaunchObserver {
    fun onLaunchAborted(result: OnLaunchResult)
}