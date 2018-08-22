package com.meuexamplo.gilzamir.exemplo1

import android.app.Activity
import android.graphics.Color
import android.os.Bundle
import com.github.mikephil.charting.charts.LineChart
import com.github.mikephil.charting.data.Entry
import com.github.mikephil.charting.data.LineData
import com.github.mikephil.charting.data.LineDataSet


data class MeusDados(val x:Float, var y:Float)

/**
 * Created by gilza on 26/10/2017.
 */
class ExemploGraficoLinha : Activity() {

    lateinit var lineChart:LineChart

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.layout_grafico_linha)

        lineChart = findViewById<LineChart>(R.id.simpleLineChart)

        val meusdados = arrayOf<MeusDados>(
                MeusDados(0.0f, 0.0f),
                MeusDados(0.5f, 0.5f),
                MeusDados(1.0f, 0.0f),
                MeusDados(2.0f, 0.8f)
        )

        val entries = ArrayList<Entry>()

        for (dado in meusdados){
            entries.add(Entry(dado.x, dado.y))
        }

        val dataSet = LineDataSet(entries, "Label")
        dataSet.setColor(Color.RED)
        dataSet.valueTextColor = Color.RED

        val lineData = LineData(dataSet)
        lineChart.data = lineData
        lineChart.invalidate()
    }
}