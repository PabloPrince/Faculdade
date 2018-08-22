"use strict";
var gl;
var points;
var colors;
var colorTable = [vec3(1.0, 0.0, 0.0), vec3(0.0, 1.0, 0.0), 
						vec3(0.0, 0.0, 1.0), vec3(0.0, 1.0, 1.0)];
var webglarray;
var angleY = 0.0;
var canvas;
var program;
var uAngleYLocation;

function triangle(v1, v2, v3, colorIndex) {
	points.push(v1);
	colors.push(colorTable[colorIndex]);
	points.push(v2);
	colors.push(colorTable[colorIndex]);
	points.push(v3);
	colors.push(colorTable[colorIndex]);
}

function tetrahedron(v1, v2, v3, v4, c1, c2, c3, c4) {
	triangle(v1, v3, v2, c1);
	triangle(v1, v2, v4, c2);
	triangle(v1, v4, v3, c3);
	triangle(v2, v3, v4, c4);
}

window.onkeypress = function(evt) {
	angleY += 0.1;
	gl.uniform1f(uAngleYLocation, angleY);
	render();
}


window.onload = function initAll()
{
	init(); //inicializa o contexto grafico
	loadData(); //gera os dados os envia para os buffers
	render(); //envia os dados para serem renderizados
};

function init(){
	//Obtem o objeto que representa o canvas
    canvas = document.getElementById( "gl-canvas" );

	//Obtem o contexto 3D (WebGL) do canvas e o referencia por meio da variavel gl
	gl = WebGLUtils.setupWebGL( canvas);
    if ( !gl ) { alert( "WebGL isn't available" ); }
	gl.enable(gl.DEPTH_TEST);
}

function loadData() {
	 //  Inicializamos os dados de um triangulo
	points = [];
	colors = [];
	
	//Valores dos vertices
    var vertices = [
		vec3( 0, 0, 1),
		vec3( 0.6, 0, 0.6),
		vec3( 0, 0, 0),
		vec3( 0, 1.0, 0)
	];
	
	tetrahedron(vertices[0], vertices[1], vertices[2], vertices[3], 0, 1, 2, 3);
	
	var vertexesArray = flatten(points);
	var colorsArray = flatten(colors);
	
    //  Define a localizacao do viewport na tela e o seu tamanho.
    gl.viewport( 0, 0, canvas.width, canvas.height );
	
	//Define a cor de fundo do viewport
   // gl.clearColor( 1.0, 1.0, 1.0, 1.0 );

    //Carrega os shaders and inicializa os buffers de atributos
    program = initShaders( gl, "vertex-shader", "fragment-shader" );
    gl.useProgram( program );

	uAngleYLocation = gl.getUniformLocation(program, "uAngleY"); 
	
	gl.uniform1f(uAngleYLocation, new Float32Array(angleY));
	
    // Coloca os dados na GPU
    // Coloca os dados de cor na GPU
    var colorBufferId = gl.createBuffer();
    gl.bindBuffer( gl.ARRAY_BUFFER, colorBufferId );
    gl.bufferData( gl.ARRAY_BUFFER, colorsArray, gl.STATIC_DRAW );

    // Associa as variaveis do shader de saida com o buffer de dados
    var vColor = gl.getAttribLocation( program, "vColor" );
    gl.vertexAttribPointer( vColor, 3, gl.FLOAT, false, 0, 0 );
    gl.enableVertexAttribArray( vColor );
	
	
	var bufferId = gl.createBuffer();
    gl.bindBuffer( gl.ARRAY_BUFFER, bufferId );
    gl.bufferData( gl.ARRAY_BUFFER, vertexesArray, gl.STATIC_DRAW );

    // Associa as variaveis do shader de saida com o buffer de dados
    var vPosition = gl.getAttribLocation( program, "vPosition" );
    gl.vertexAttribPointer( vPosition, 3, gl.FLOAT, false, 0, 0 );
    gl.enableVertexAttribArray( vPosition );
}

function render() {
	gl.clear(gl.COLOR_BUFFER_BIT | gl.DEPTH_BUFFER_BIT);
	gl.drawArrays( gl.TRIANGLES, 0, points.length);
}
