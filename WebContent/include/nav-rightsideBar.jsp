<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link href='./css/nav-rightsideBar.css?ver=2' rel="stylesheet">
   


<!-- <button onclick="on()">Turn on overlay effect</button> -->

<div id="overlay2" onclick="r_menu_off()"><!-- 오버레이 영역 -->
</div><!-- 오버레이끝 -->
	<div id="right-nav_menu"><!-- 사이드영역 -->
		<div class="close_content">
      		<span class="e_close_btn" data-type="close">
        	
      		</span>
      <a class="message-icon-cover" href="/messages">
        <span class="icon"><i class="fal fa-bell"></i></span>
        
      </a>
    </div>
	</div><!-- 사이드끝 --> 
	<!-- <div id="exit" onclick="r_menu_off()"> </div>  여백누르면닫힘 -->

<!-- 오버레이 켜기/끄기 -->
<script>
function r_menu_on() {
  document.getElementById("overlay2").style.display = "block";
  $("#right-nav_menu").css("right","0px");
  $("body").css("overflow","hidden");
  
}

function r_menu_off() {
  document.getElementById("overlay2").style.display = "none";
  $("#right-nav_menu").css("right","-300px");
  $("body").css("overflow","auto");
}
</script>


<!-- accordion -->
<script>
var acc = document.getElementsByClassName("nav-accordion");
var i;

for (i = 0; i < acc.length; i++) {
  acc[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var panel = this.nextElementSibling;
    if (panel.style.maxHeight) {
      panel.style.maxHeight = null;
    } else {
      panel.style.maxHeight = panel.scrollHeight + "px";
    } 
  });
}
</script>
