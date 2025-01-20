package com.onepointtwostore.app

import io.flutter.embedding.android.FlutterActivity;
import android.content.Intent;


class MainActivity: FlutterActivity(){



override fun onNewIntent(intent: Intent) {
    super.onNewIntent(intent)
    
}

override fun onBackPressed() {

  // handle other cases
  super.onBackPressed()
}

}