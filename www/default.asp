<html>
<head>

<meta name="viewport" content="width=360, user-scalable=1" >

<script src=jquery.js></script>
<script>

$(document).ready( function() {

var o="";
for (var y=0;y<16;y++) {
  o=o+"<tr>"
  for (var x=0;x<16;x++) {
    o=o+"<td></td>";
  }
  o=o+"</tr>";
}
o="<table cellpadding=0 cellspacing=0>"+o+"</table>"
$("#grid").html(o);

$(window).bind("mousedown", function() {mousebutton=1;});
$(window).bind("mouseup", function() {mousebutton=0;});

$("#grid td").mouseenter( function() { draw(this);} );
$("#grid td").mousedown( function() {mousebutton=1; draw(this);} );

});

var mousebutton=0;

function draw(t) {
  if (mousebutton==1) {
    $(t).css("background","red");  
  }
}


</script>
<style>
body {margin: 0px;}
#grid table {border-collapse: collapse; margin: 0px auto; background: #ffffee;}
#grid table td {width: 20px; height: 20px; border: 1px solid silver;}
</style>

</head>


<body>

<div id=grid style='width: 360px; text-align: center; background: #eeeeee;'>
</div>