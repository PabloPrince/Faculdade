"use strict";
var gl;
var points;
var colors;
var colorTable = [vec3(1.0, 0.0, 0.0), vec3(0.0, 1.0, 0.0), 
						vec3(0.0, 0.0, 1.0), vec3(0.0, 1.0, 1.0)];
var webglarray;

function triangle(len, level){
  if (level < 1) {
    t.repeat(3, function(){
      t.fd(len).rt(120);
    });
  } else {
    t.repeat(3, function(){
      t.pd();
      triangle(len/2, level-1);
      t.pu().fd(len).rt(120);
    })
  }
}
t.reset().xy(-300, -200).rt(30).clean();
triangle(600, 7);

function tetrahedron(v1, v2, v3, v4, c1, c2, c3, c4) {
	triangle(v1, v2, v3, c1);
	triangle(v1, v2, v4, c2);
	triangle(v1, v4, v3, c3);
	triangle(v2, v3, v4, c4);
}

window.onload = function init()
{
	points = [];
	colors = [];
	//Obtem o objeto que representa o canvas
    var canvas = document.getElementById( "gl-canvas" );

	//Obtem o contexto 3D (WebGL) do canvas e o referencia por meio da variavel gl
    gl = WebGLUtils.setupWebGL( canvas );
    if ( !gl ) { alert( "WebGL isn't available" ); }

    //  Inicializamos os dados de um triangulo

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
    gl.clearColor( 1.0, 1.0, 1.0, 1.0 );

    //Carrega os shaders and inicializa os buffers de atributos
    var program = initShaders( gl, "vertex-shader", "fragment-shader" );
    gl.useProgram( program );

    // Coloca os dados na GPU
    var bufferId = gl.createBuffer();
    gl.bindBuffer( gl.ARRAY_BUFFER, bufferId );
    gl.bufferData( gl.ARRAY_BUFFER, vertexesArray, gl.STATIC_DRAW );

    // Associa as variaveis do shader de saida com o buffer de dados
    var vPosition = gl.getAttribLocation( program, "vPosition" );
    gl.vertexAttribPointer( vPosition, 3, gl.FLOAT, false, 0, 0 );
    gl.enableVertexAttribArray( vPosition );

    // Coloca os dados de cor na GPU
    var colorBufferId = gl.createBuffer();
    gl.bindBuffer( gl.ARRAY_BUFFER, colorBufferId );
    gl.bufferData( gl.ARRAY_BUFFER, colorsArray, gl.STATIC_DRAW );

    // Associa as variaveis do shader de saida com o buffer de dados
    var vColor = gl.getAttribLocation( program, "vColor" );
    gl.vertexAttribPointer( vColor, 3, gl.FLOAT, false, 0, 0 );
    gl.enableVertexAttribArray( vColor );
	
	
	//Inicia o processo de renderizacao
    render();
};

function render() {
    gl.clear( gl.COLOR_BUFFER_BIT );
    gl.drawArrays( gl.TRIANGLES, 0, points.length);
}
