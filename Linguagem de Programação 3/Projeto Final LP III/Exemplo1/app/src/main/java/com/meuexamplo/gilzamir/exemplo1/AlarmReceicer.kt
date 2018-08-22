package com.meuexamplo.gilzamir.exemplo1

import android.app.NotificationManager
import android.app.PendingIntent
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.support.v4.app.NotificationCompat

/**
 * Created by gilza on 26/10/2017.
 */
class AlarmReceicer: BroadcastReceiver() {
    override fun onReceive(ctx: Context?, intent: Intent?) {
        val builder = NotificationCompat.Builder(ctx!!, "MostrarIMC")
                .setSmallIcon(R.drawable.notify_panel_notification_icon_bg)
                .setContentTitle("Veja o seu progresso!")
                .setContentText("Legal")
                .setTimeoutAfter(2000)

        val resultIntent = Intent(ctx, EditarPessoaIMC::class.java)
        val resultPendingIntent = PendingIntent.getActivity(
                ctx, 0,
                resultIntent, PendingIntent.FLAG_UPDATE_CURRENT
        )

        builder.setContentIntent(resultPendingIntent)
        val notifyId = 1;
        val notifyMgr  = ctx.getSystemService(Context.NOTIFICATION_SERVICE)
                as NotificationManager

        notifyMgr.notify(notifyId, builder.build())
    }
}