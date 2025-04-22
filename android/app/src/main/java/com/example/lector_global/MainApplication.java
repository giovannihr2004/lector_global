package com.example.lector_global;

import android.app.Application;
import com.facebook.FacebookSdk;
import com.facebook.appevents.AppEventsLogger;
import io.flutter.app.FlutterApplication;
import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MainApplication extends FlutterApplication {
  @Override
  public void onCreate() {
    super.onCreate();

    // ✅ Inicialización del SDK de Facebook
    FacebookSdk.sdkInitialize(getApplicationContext());
    AppEventsLogger.activateApp(this);
  }
}
