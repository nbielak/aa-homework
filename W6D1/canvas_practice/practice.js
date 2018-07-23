document.addEventListener("DOMContentLoaded", function(){
  const canvas = document.getElementById("mycanvas");
  canvas.height = 500;
  canvas.width = 500;

  const ctx = canvas.getContext("2d");
  ctx.fillStyle = "blue";
  ctx.fillRect(0, 0, 500, 500);

  ctx.beginPath();
  ctx.moveTo(75, 50);
  ctx.lineTo(100, 75);
  ctx.lineTo(100, 25);
  ctx.fillStyle = "orange";
  ctx.fill();

  ctx.beginPath();
  ctx.arc(20, 20, 30, 0, 2 * Math.PI);
  ctx.strokeStyle = "red";
  ctx.lineWidth = 10;
  ctx.stroke();
  ctx.fillStyle = "green";
  ctx.fill();
});
