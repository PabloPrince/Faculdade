package com.meuexamplo.gilzamir.exemplo1

import android.app.Application
import android.content.res.Configuration
import android.util.Log

class App : Application() {

    override fun onCreate() {
        super.onCreate()
        IMCDataHelperSingleton.helper = IMCDataHelper(this)
    }

    override fun onTrimMemory(level: Int) {
        super.onTrimMemory(level)
        Log.e("TRACKING APP", "TRIM MEMORY NOTIFICATION")
    }

    override fun onConfigurationChanged(newConfig: Configuration?) {
        super.onConfigurationChanged(newConfig)
        Log.e("TRACKING APP", "CONFIGURATION CHANGE")
    }

    override fun onLowMemory() {
        super.onLowMemory()
        Log.e("TRACKING APP", "LOW MEMORY NOTIFICATION")
    }

    override fun onTerminate() {
        super.onTerminate()
        Log.e("TRACKING APP", "TERMINATE")

    }
}