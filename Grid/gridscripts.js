//gridscripts.js

//globals
var width = 10;
var height = 10;

//startup
$(document).ready(function(){
	console.log("Loaded");
	//load defaults, setup
	//$('gridwrapper').html("");
	var defaultgrid = prompt("Start with a square gride of size?: ");
	console.log(defaultgrid);
	inputCheck(defaultgrid, defaultgrid);
	
	//calculate the square sizes
	var square_size = $('#grid_container').width()/defaultgrid - 2;

	//update the CSS for the input grid dimensions
	$('.grid_square').css('width',defaultgrid);
	$('.grid_square').css('height',defaultgrid);

	//create the grid
	drawGrid(defaultgrid, defaultgrid);

	//prep buttons
	$('#formsubmit').click(function() {
      newDimensions($('#formwidth').val(),$('#formheight').val());
    });

	//Tell the user what to to:
	//prompt("Create a grid and then mouse over for effects. Click a button to change settings below. When ready, click submit.");
	//Setup buttons
	//Initial grid setup


	/*
	$('.grid_square').css('width',square_size);
	$('.grid_square').css('height',square_size);

	$('.grid_square').mouseenter(function(){
		switch(option){
			case 1:
				$(this).addClass('grid_square_lit');
				break;
			case 2:
				var currentOpacity = $(this).css('opacity');
				if(currentOpacity > 0){
					$(this).css('opacity', currentOpacity - 0.1);
				}
				break;
			case 3:
				/*
				Animate to 0% opacity over 200ms, then back to 100%
				opacity over 800ms when cursor leaves square.
				This "case 3" was added for fun. The Odin Project
				does not ask you to do this option.
						
				$(this).fadeTo(100,0);
				$(this).mouseleave(function(){
					$(this).fadeTo(400,1);
				});
				break;
		}
	});*/
		
});


function inputCheck(width, height){
	if (1<=width&&width<=128&&1<=height&&height<=128) {
		console.log("Size in range");
	} else {
		alert("Grid must be between 1 and 128 boxes square!");
	}
}

function drawGrid(width,height){
	console.log("drawGrid()");
	for(var i = 1; i <= width; i++){
		for(var j = 1; j <= height; j++){
			$('#gridwrapper').append('<div class="grid_square"></div>');
		}
		$('#gridwrapper').append('<div class="new_row"></div>');
	}
}

//changeColor();
function changeColor(){
	console.log("changeColor()");
}

//clearGrid();
function clearGrid(){
	console.log("clearGrid()");
}

//newDimensions();
function newDimensions(width, height){
	console.log("newDimensions()");
	console.log(width, height);
	inputCheck(width, height);
}