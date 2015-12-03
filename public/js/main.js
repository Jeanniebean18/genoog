


var arrow = document.getElementById("arrow");
var camera = document.getElementById("camera");
var email = document.getElementById("email");
var list = document.getElementById("list");
var cloud = document.getElementById("cloud");
var to_cloud = document.getElementById("to_cloud");
var from_cloud = document.getElementById("from_cloud");


window.onscroll=inView;
  
  
function inView(){
  // roll out of top star
  if (window.pageYOffset>300) {
    arrow.style.display="block";
   
    
  }

  if (window.pageYOffset<300) {
    arrow.style.display="none";
   
  }
  
  if(isInViewport(camera)){
    
    camera.setAttribute("class","animated pulse delay1");
    email.setAttribute("class","animated pulse delay2");
    list.setAttribute("class","animated pulse delay3");
    cloud.setAttribute("class","animated pulse delay5");
    to_cloud.setAttribute("class","animated slideInLeft delay4");
    from_cloud.setAttribute("class","animated slideInRight delay4");
    
    
    
    
  }
  
}
  
  var isInViewport=function(elem){var distance=elem.getBoundingClientRect();return(distance.top>=0&&distance.left>=0&&distance.bottom<=(window.innerHeight||document.documentElement.clientHeight)&&distance.right<=(window.innerWidth||document.documentElement.clientWidth));};


