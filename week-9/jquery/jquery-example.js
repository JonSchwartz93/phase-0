// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM
bodyElement = $('body')
divElement = $('div')

//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
$('body > h1').css({'color': 'white',
			'border': 'dashed',
			'visibility': 'visible'
})
$('div > h1').html("Fiddler Crabs 2016")

//RELEASE 4: Event Listener
  // Add the code for the event listener here
$('img').on('mouseover', function(e){
	e.preventDefault()
$(this).attr('src', 'http://www.fiddlercrab.info/photos/U_crassipes19tn.jpg')
}).mouseout(function() {
	$(this).attr('src', 'dbc_logo.png')
})

//RELEASE 5: Experiment on your own
$('img').mouseover(function() {
	$(this).animate({ height: '250px',
					width: '400'}, 400)
}).mouseout(function() {
	$(this).animate({ height: '37px',
					width: '220px'}, 0)
})
})

// end of the document.ready function: do not remove or write DOM manipulation below this.