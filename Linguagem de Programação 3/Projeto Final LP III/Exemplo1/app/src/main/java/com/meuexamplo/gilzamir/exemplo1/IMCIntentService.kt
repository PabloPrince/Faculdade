package com.meuexamplo.gilzamir.exemplo1

import android.app.IntentService
import android.app.NotificationManager
import android.app.PendingIntent
import android.content.Context
import android.content.Intent
import android.support.v4.app.NotificationCompat
import com.meuexamplo.gilzamir.exemplo1.R.mipmap.ic_launcher



/**
 * Created by gilza on 26/10/2017.
 */
class IMCIntentService : IntentService("IMCNotification") {

    var intervaloNotificacao:Long = 1 * 60 * 1000 //min * seg * ms
    var servicoAtivo:Boolean = false

    override fun onHandleIntent(intent: Intent?) {
        servicoAtivo = true
        while(servicoAtivo){
            verificarSeTempoNotificacao()
        }
    }

    private fun verificarSeTempoNotificacao(){
        try {

            // Tempo de espera até a próxima verificação no webapi
            Thread.sleep(intervaloNotificacao)

            if (!servicoAtivo) {
                return
            }

            exibirNotificacao();

        } catch (e: Exception) {
            // Caso seja necessário, colocar para gravar o log aqui
        }
    }

    private fun exibirNotificacao(){
        val builder = NotificationCompat.Builder(this, "MostrarIMC")
                .setSmallIcon(R.drawable.notify_panel_notification_icon_bg)
                .setContentTitle("Veja o seu progresso!")
                .setContentText("Legal")
                .setTimeoutAfter(2000)

        val resultIntent = Intent(this, EditarPessoaIMC::class.java)
        val resultPendingIntent = PendingIntent.getActivity(
                this,
                0,
                resultIntent,
                PendingIntent.FLAG_UPDATE_CURRENT
        )

        builder.setContentIntent(resultPendingIntent)
        val notifyId = 1;
        val notifyMgr  = getSystemService(Context.NOTIFICATION_SERVICE)
                as NotificationManager

        notifyMgr.notify(notifyId, builder.build())
    }
}