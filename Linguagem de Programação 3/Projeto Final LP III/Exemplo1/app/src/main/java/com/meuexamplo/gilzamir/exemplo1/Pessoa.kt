package com.meuexamplo.gilzamir.exemplo1

import java.io.Serializable


data class Pessoa (val nome: String, var altura: Float,
                   var massa: Float, val ID: Long?=null) : Serializable {

    val imc: Float
    get() {
        return massa/(altura * altura)
    }
    override fun toString(): String {
        return "$nome\t$imc";
    }
}
