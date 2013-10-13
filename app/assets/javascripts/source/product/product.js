$(document).ready(function(){
  //вешаем плагин на контейнер-картинку
  $(".product .foto").imagezoomsl({
    zoomrange: [2.5, 12],
    magnifiersize: [400, 450],
    scrollspeedanimate: 10,
    loopspeedanimate: 5
  });
});