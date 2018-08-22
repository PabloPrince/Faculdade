package com.meuexamplo.gilzamir.exemplo1
import android.app.Activity
import android.app.AlarmManager
import android.app.NotificationManager
import android.app.PendingIntent
import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.os.SystemClock
import android.support.v4.app.NotificationCompat
import android.view.View
import android.widget.*

val DADOS_DE_PESSOA = "DADOS_DE_PESSOA"

val pessoasSelecionadas = mutableMapOf<Pessoa, Boolean>()

class MostrarIMC : Activity() {

    lateinit var imcList: ListView
    private val OP_EDICAO_PESSOA = 0
    private val OP_NOVA_PESSOA = 1
    private lateinit var pessoas: MutableList<Pessoa>
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_mostrarimc)
        pessoas = PessoaDAO.read()
        imcList = findViewById<ListView>(R.id.imcList)
        pessoas.sortBy { pessoa -> pessoa.imc }
        imcList.adapter = ListaPessoaAdapter (this, pessoas)
        imcList.setOnItemClickListener{
            parent, view, id, position ->
            val intent = Intent(this, EditarPessoaIMC::class.java)
            intent.putExtra(INPUT_PESSOA, pessoas[position.toInt()])
            startActivityForResult(intent, OP_EDICAO_PESSOA)
        }

        val manager = getSystemService(Context.ALARM_SERVICE) as AlarmManager
        val alarmIntent = Intent(this, AlarmReceicer::class.java)
        val pendingAlarmIntent = PendingIntent.getBroadcast(this,0, alarmIntent,
                0)
        manager.set(
                AlarmManager.ELAPSED_REALTIME_WAKEUP,
                SystemClock.elapsedRealtime()+60*1000,
                pendingAlarmIntent)
    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        super.onActivityResult(requestCode, resultCode, data)
        if (resultCode==Activity.RESULT_OK) {
            if (requestCode == OP_EDICAO_PESSOA) {
                val pessoaEditada = data?.extras?.getSerializable(IMC_EDIT_RESULT) as Pessoa

                (imcList.adapter as ListaPessoaAdapter).lista = pessoas
                (imcList.adapter as ListaPessoaAdapter).notifyDataSetChanged()
            } else if (requestCode == OP_NOVA_PESSOA) {
                val pessoaNova = data?.extras?.getSerializable(IMC_EDIT_RESULT) as Pessoa
                PessoaDAO.create(pessoaNova)
                pessoas = PessoaDAO.read()
                (imcList.adapter as ListaPessoaAdapter).lista = pessoas
                (imcList.adapter as ListaPessoaAdapter).notifyDataSetChanged()
            }
        } else {
            Toast.makeText(this, "Erro ao editar pessoa!",
                    Toast.LENGTH_LONG).show()
        }
    }

    fun adicionarNovo(view: View){
        val intent = Intent(this, EditarPessoaIMC::class.java)
        startActivityForResult(intent, OP_NOVA_PESSOA)
    }
}


