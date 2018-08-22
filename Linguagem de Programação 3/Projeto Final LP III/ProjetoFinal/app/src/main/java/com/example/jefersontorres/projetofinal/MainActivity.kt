package com.example.jefersontorres.projetofinal

import android.app.Activity
import android.content.Intent
import android.os.Bundle
import android.view.View
import android.webkit.WebView
import android.widget.Toast


class MainActivity : Activity() {
    private val OP_NOVA_PESSOA = 1
    private val OP_EDICAO_PESSOA = 0

    private lateinit var pessoas: MutableList<Long>

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        if (intent.hasExtra(INPUT_PESSOA)) {
            val novaP = intent.getSerializableExtra(INPUT_PESSOA)
            val novaM = intent.getSerializableExtra(INPUT_MEDIDA)
            salvar(novaP as Pessoa, novaM as Medidas)
        }
        if (intent.hasExtra(NOVAMA)){
            val novaMa = intent.getSerializableExtra(NOVAMA)
            salvarM(novaMa as Medidas)
        }
        if (intent.hasExtra(NOVAALT)){
            val novaAl = intent.getSerializableExtra(NOVAALT)
            salvarM(novaAl as Medidas)
        }

    }

    private fun salvar(pessoaNova: Pessoa, medidaN: Medidas){
        PessoaDAO.create(pessoaNova)
        MedidasDAO.create(medidaN)
    }

    private fun salvarM(medidaN: Medidas){
        MedidasDAO.create(medidaN)
    }

    fun primeiroCad(view: View){
        val teste = PessoaDAO.read()
        if (teste.size > 0) {
            Toast.makeText(this, "ERRO! Já há uma pessoa cadastrada", Toast.LENGTH_LONG).show()
        } else {
            val intent = Intent(this, Cadastrar::class.java)
            startActivity(intent)
        }
    }

    fun mostrarMedida(view: View){
        var intent = Intent(this, MostrarMedida::class.java)
        startActivity(intent)
    }
    fun novaMassa(view: View){
        var intent = Intent(this, NovaMassa::class.java)
        startActivity(intent)
    }
    fun novaAltura(view: View){
        var intent = Intent(this, NovaAltura::class.java)
        startActivity(intent)
    }
    fun listaMedidas(view: View){
        var intent = Intent(this, ListaMedidas::class.java)
        startActivity(intent)
    }
}
