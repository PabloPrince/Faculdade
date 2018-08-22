package com.meuexamplo.gilzamir.exemplo1

import android.app.Activity
import android.view.View
import android.view.ViewGroup
import android.widget.BaseAdapter
import android.widget.CheckBox
import android.widget.TextView
import android.widget.Toast

/**
 * Created by gilza on 28/09/2017.
 */
class ListaPessoaAdapter(val actvity:Activity,
                         var lista: MutableList<Pessoa>) : BaseAdapter() {
    override fun getView(id: Int, viewReserva: View?, pai: ViewGroup?): View {
        val view = actvity.layoutInflater.inflate(R.layout.layout_lista_pessoas, pai, false)
        val field1 = view.findViewById<TextView>(R.id.field1)
        val field2 = view.findViewById<TextView>(R.id.field2)
        val checkbox = view.findViewById<CheckBox>(R.id.checkBox)

        val pessoa = getItem(id)

        checkbox.setOnCheckedChangeListener{ view, checked ->
                if (checked) {
                    pessoasSelecionadas[pessoa] = true
                } else {
                    pessoasSelecionadas.remove(pessoa)
                }
                Toast.makeText(actvity, "Qtd items: ${pessoasSelecionadas.size}",
                        Toast.LENGTH_SHORT).show()
        }

        field1.text = pessoa.nome
        field2.text = pessoa.imc.toString()
        return view
    }

    override fun getItem(id: Int): Pessoa {
        return lista[id]
    }

    override fun getItemId(id: Int): Long {
        return id.toLong();
    }

    override fun getCount(): Int {
        return lista.size
    }
}