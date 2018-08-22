package com.meuexamplo.gilzamir.exemplo1

import android.content.ContentValues

/**
 * Created by gilza on 05/10/2017.
 */
object PessoaDAO {
    fun create(pessoa: Pessoa): Boolean {
        val db = IMCDataHelperSingleton.helper.writableDatabase

        val content = ContentValues()
        content.put("nome", pessoa.nome)
        content.put("altura", pessoa.altura)
        content.put("massa", pessoa.massa)
        content.put("imc", pessoa.imc)
        return db.insert("Pessoa", null, content) > 0
    }

    fun read(): MutableList<Pessoa>{
        val db = IMCDataHelperSingleton.helper.readableDatabase

        val cursor = db.rawQuery("select * from Pessoa", null)
        val lista = mutableListOf<Pessoa>()
        while (cursor.moveToNext()) {
            val id = cursor.getLong(cursor.getColumnIndex("_id"))
            val nome = cursor.getString(cursor.getColumnIndex("nome"))
            val altura = cursor.getFloat(cursor.getColumnIndex("altura"))
            val massa = cursor.getFloat(cursor.getColumnIndex("massa"))
            val imc = cursor.getFloat(cursor.getColumnIndex("imc"))
            lista.add(Pessoa(nome, altura, massa, id))
        }

        return lista
    }

    fun update(pessoa:Pessoa): Boolean {
        return true
    }

    fun remove(pessoa: Pessoa): Boolean {
        return true
    }
}