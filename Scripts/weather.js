//Skycon
var Skycon = new Skycons({
  "color": "#666"
});
var weatherType = document.getElementById('IconID').value,
  	elements = document.getElementsByClassName('SkyConIs');
Skycon.set(elements[0], weatherType);
Skycon.play(); //animation