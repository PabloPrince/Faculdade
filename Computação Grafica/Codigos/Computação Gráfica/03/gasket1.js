"use strict";

var gl;
var points;

var NumPoints = 1000;

window.onload = function init()
{
    var canvas = document.getElementById( "gl-canvas" );

    gl = WebGLUtils.setupWebGL( canvas );
    if ( !gl ) { alert( "WebGL isn't available" ); }

    //
    //  Initialize our data for the Sierpinski Gasket
    //

    // First, initialize the corners of our gasket with three points.

    var vertices = [
        vec2( -1, -1 ),
        vec2(  0,  1 ),
        vec2(  1, -1 )
    ];

    // Specify a starting point p for our iterations
    // p must lie inside any set of three vertices

    var u = add( vertices[0], vertices[1] );
    var v = add( vertices[0], vertices[2] );
    var p = scale( 0.25, add( u, v ) );

    // And, add our initial point into our array of points

    points = [ p ];
    var noise = [ vec2(Math.random(), Math.random()) ]

    // Compute new points
    // Each new point is located midway between
    // last point and a randomly chosen vertex

    for ( var i = 0; points.length < NumPoints; ++i ) {
        var j = Math.floor(Math.random() * 3);
        p = add( points[i], vertices[j] );
        p = scale( 0.5, p );
        points.push( p );
        noise.push(vec2(Math.random(), Math.random()))
    }

    //
    //  Configure WebGL
    //
    gl.viewport( 0, 0, canvas.width, canvas.height );
    gl.clearColor( 1.0, 1.0, 1.0, 1.0 );

    //  Load shaders and initialize attribute buffers

    var program = initShaders( gl, "vertex-shader", "fragment-shader" );
    gl.useProgram( program );

    // Load the data into the GPU


    var noiseBufferId = gl.createBuffer();
    gl.bindBuffer( gl.ARRAY_BUFFER, noiseBufferId );
    gl.bufferData( gl.ARRAY_BUFFER, flatten(noise), gl.STATIC_DRAW );
    // Associate out shader variables with our data buffer
    
    
    var noiseAttrID = gl.getAttribLocation( program, "vPosition" ); //aqui pegamos o ID do atributo
    gl.vertexAttribPointer( noiseAttrID, 2, gl.FLOAT, false, 0, 0 ); //aqui dizemos como lê os dados do
    //buffer e coloca-los no atributo
    gl.enableVertexAttribArray( noiseAttrID ); //aqui dizemos que o pipeline tem que efetivamente carregar
    //este atributo
    
    
    var bufferId = gl.createBuffer();
    gl.bindBuffer( gl.ARRAY_BUFFER, bufferId );
    gl.bufferData( gl.ARRAY_BUFFER, flatten(points), gl.STATIC_DRAW );
    // Associate out shader variables with our data buffer
    
    var vPosition = gl.getAttribLocation( program, "vPosition" );
    gl.vertexAttribPointer( vPosition, 2, gl.FLOAT, false, 0, 0 );
    gl.enableVertexAttribArray( vPosition );
    


    render();
};


function render() {
    gl.clear( gl.COLOR_BUFFER_BIT );
    gl.drawArrays( gl.POINTS, 0, points.length );
}
