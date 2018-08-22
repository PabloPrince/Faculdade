package com.meuexamplo.gilzamir.exemplo1

import android.content.Context
import android.database.sqlite.SQLiteDatabase
import android.database.sqlite.SQLiteOpenHelper

/**
 * Created by gilza on 05/10/2017.
 */
class IMCDataHelper(context:Context) : SQLiteOpenHelper(context, "imcbase", null, 1) {
    override fun onCreate(db: SQLiteDatabase?) {
        db?.execSQL("CREATE TABLE Pessoa(_id INTEGER PRIMARY KEY, " +
                        "nome TEXT, altura DOUBLE DEFAULT 0.0, massa DOUBLE DEFAULT 0.0, " +
                        " imc DOUBLE DEFAULT 0.0);")
    }

    override fun onUpgrade(db: SQLiteDatabase?, versaoPrevisao: Int, novaVersao: Int) {
    }
}

object IMCDataHelperSingleton {
    lateinit var helper: IMCDataHelper;
}
