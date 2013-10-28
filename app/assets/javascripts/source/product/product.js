$(document).ready(function(){
  //вешаем плагин на контейнер-картинку
  $(".product .foto").imagezoomsl({
    zoomrange: [2.5, 12],
    magnifiersize: [400, 450],
    scrollspeedanimate: 10,
    loopspeedanimate: 5
  });

    $(".product .mini img").click(function(){
        $(".product .foto").attr({
            src: $(this).attr('data-thumb'),
            "data-large": $(this).attr('data-large')
        });
    });

});