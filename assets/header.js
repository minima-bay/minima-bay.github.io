// The bar at the top moves out of the way while reading down the page, and comes back at the first move up or near the top.
(function () {
  var bar = document.querySelector("header.bar");
  if (!bar) return;
  var last = window.scrollY;
  window.addEventListener("scroll", function () {
    var y = window.scrollY;
    if (y < 80 || y < last - 2) bar.classList.remove("away");
    else if (y > last + 6) bar.classList.add("away");
    last = y;
  }, { passive: true });
  // Reached with the keyboard: always shown.
  bar.addEventListener("focusin", function () { bar.classList.remove("away"); });
})();
