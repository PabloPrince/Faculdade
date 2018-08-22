"use strict";
var gl;

window.onload = function init()
{
	//Obtem o objeto que representa o canvas
    var canvas = document.getElementById( "gl-canvas" );

	//Obtem o contexto 3D (WebGL) do canvas e o referencia por meio da variavel gl
    gl = WebGLUtils.setupWebGL( canvas );
    if ( !gl ) { alert( "WebGL isn't available" ); }

    //  Inicializamos os dados de um triangulo
	
	//Valores dos vertices
    var vertices = [
		vec2( 0, 1), 
		vec2( 1,  0),
		vec2( -1, 0),
		vec2(0, -1)
	];
	
	var webglarray = flatten(vertices);

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
    gl.bufferData( gl.ARRAY_BUFFER, webglarray, gl.STATIC_DRAW );

    // Associa as variaveis do shader de saida com o buffer de dados
    var vPosition = gl.getAttribLocation( program, "vPosition" );
    gl.vertexAttribPointer( vPosition, 2, gl.FLOAT, false, 0, 0 );
    gl.enableVertexAttribArray( vPosition );

	//Inicia o processo de renderizacao
    render();
};

function render() {
    gl.clear( gl.COLOR_BUFFER_BIT );
    gl.drawArrays( gl.TRIANGLE_STRIP, 0, 4);
}
