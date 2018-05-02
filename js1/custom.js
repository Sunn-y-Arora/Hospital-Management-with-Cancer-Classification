/* Set the width of the side navigation to 250px and the left margin of the page content to 250px and add a black background color to body */

var toggleState = 0; // 0-close 1-open

function openNav() {
    document.getElementById("sideNav").style.width = "350px";
    document.getElementById("main").style.marginLeft = "350px";
    document.getElementById("video-overlay2").style.opacity = "0.7";
    document.getElementById("title-flex").style.opacity = "0.8";
    toggleState = 1;

}

/* Set the width of the side navigation to 0 and the left margin of the page content to 0, and the background color of body to white */
function closeNav() {
    document.getElementById("sideNav").style.width = "0";
    document.getElementById("main").style.marginLeft = "0";
    // document.querySelector("video").style.filter = "blur(0px)";
    document.getElementById("video-overlay2").style.opacity = "0.5";
    document.getElementById("title-flex").style.opacity = "1";
    toggleState = 0;

}

function toggleNav() {
  if (!toggleState)
    openNav();
  else
    closeNav();
}
