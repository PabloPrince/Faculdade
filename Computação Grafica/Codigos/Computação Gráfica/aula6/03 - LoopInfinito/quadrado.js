"use strict";
var gl;
var numPoints = 0
var canvas;
var theta = 0.0;
var program;

window.onload = initAll
window.onkeypress = onkeypressHandler

function initAll() {
	init();
	render();
	
}

function onkeypressHandler(evt) {
	theta += 0.1;
	render();
}

function init()
{
	//Obtem o objeto que representa o canvas
    canvas = document.getElementById( "gl-canvas" );

	//Obtem o contexto 3D (WebGL) do canvas e o referencia por meio da variavel gl
    gl = WebGLUtils.setupWebGL( canvas );
    if ( !gl ) { alert( "WebGL isn't available" ); }
	
    //  Define a localizacao do viewport na tela e o seu tamanho.
    gl.viewport( 0, 0, canvas.width, canvas.height );
	
	//Define a cor de fundo do viewport
    gl.clearColor( 1.0, 1.0, 1.0, 1.0 );
	
	
    //Carrega os shaders and inicializa os buffers de atributos
    program = initShaders( gl, "vertex-shader", "fragment-shader" );
    gl.useProgram( program );

};

function loadData() {
    //  Inicializamos os dados de um triangulo
	
	numPoints = 4
	
	//Valores dos vertices
    var v = [
		vec2(0, 1), 
		vec2(1, 0),
		vec2(-1, 0),
		vec2(0, -1)
	];

	//Valores dos vertices
    var vertices = []
	
	for (var i = 0; i < 4; i++){
		var x = -v[i][0] * Math.sin(theta)+v[i][1]*Math.cos(theta);
		var y = v[i][1] * Math.sin(theta) + v[i][0]*Math.cos(theta);
		vertices.push([x, y]);
	}
	
	var webglarray = flatten(vertices);

    // Coloca os dados na GPU
    var bufferId = gl.createBuffer();
    gl.bindBuffer( gl.ARRAY_BUFFER, bufferId );
    gl.bufferData( gl.ARRAY_BUFFER, webglarray, gl.STATIC_DRAW );

    // Associa as variaveis do shader de saida com o buffer de dados
    var vPosition = gl.getAttribLocation( program, "vPosition" );
    gl.vertexAttribPointer( vPosition, 2, gl.FLOAT, false, 0, 0 );
    gl.enableVertexAttribArray( vPosition );
}

//Inicia o processo de renderizacao
function render() {
	loadData();
    gl.clear( gl.COLOR_BUFFER_BIT );
    gl.drawArrays( gl.TRIANGLE_STRIP, 0, numPoints);
	render();
}

