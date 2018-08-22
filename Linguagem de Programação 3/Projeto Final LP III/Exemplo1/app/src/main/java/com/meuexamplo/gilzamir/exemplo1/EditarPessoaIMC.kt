package com.meuexamplo.gilzamir.exemplo1
import android.app.Activity
import android.content.Intent
import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import android.widget.EditText
import android.widget.TextView
import android.widget.Toast

val INPUT_PESSOA = "INPUT_PESSOA"
val IMC_EDIT_RESULT = "IMC_EDIT_RESULT"

class EditarPessoaIMC : AppCompatActivity() {

    lateinit var pessoa : Pessoa
    lateinit var edAltura: EditText
    lateinit var edNome: EditText
    lateinit var edPeso: EditText

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_editarpessoaimc)
        edNome = findViewById<EditText>(R.id.nome)
        edAltura = findViewById<EditText>(R.id.altura)
        edPeso = findViewById<EditText>(R.id.massa)
        pessoa = Pessoa("", 0.0f, 0.0f)
        val tmppessoa = intent.getSerializableExtra(INPUT_PESSOA)
        if (tmppessoa != null){
            pessoa = tmppessoa as Pessoa
        }
        carregarDadosNasViews()
    }

    private fun carregarDadosNasViews() {
        edNome.text.clear()
        edNome.text.append(pessoa.nome)
        edAltura.text.clear()
        edAltura.text.append(pessoa.altura.toString())
        edPeso.text.append(pessoa.massa.toString())
        calcularIMC(null)
    }

    private fun validarCampos() : Boolean {
        if (edAltura.text.length == 0) {
            edAltura.setError("Campo necessário")

            Toast.makeText(this, "Deve fornecer um valor de altura", Toast.LENGTH_LONG).show()
            return false
        }
        return true
    }

    private fun obterDadosDaView(): Boolean {
        if (!validarCampos()) {
            return false
        }
        val entradaNome = edNome.text.toString()
        val entradaAltura = edAltura.text.toString().toFloat()
        val entradaMassa = edPeso.text.toString().toFloat()

        pessoa = Pessoa(entradaNome, entradaAltura, entradaMassa)
        return true
    }

    fun calcularIMC(view: View?){
         if (obterDadosDaView()) {
             (findViewById<TextView>(R.id.resultadoIMC)).text = pessoa.imc.toString()
         }
    }

    fun salvarERetornar(view: View) {
        if (obterDadosDaView()) {
            if (callingActivity != null) {
                val intentResultante = Intent()
                intentResultante.putExtra(IMC_EDIT_RESULT, pessoa)
                setResult(Activity.RESULT_OK, intentResultante)
                finish()
            }
        }
    }
}
