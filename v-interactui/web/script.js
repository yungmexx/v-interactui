window.addEventListener('message', function(event) {
    let data = event.data
    if (event.data.type == 'showui') {
        $(".title").html(data.title);
      //  $(".title").css('background-color'); // Set the background color
     //   $(".title").css('background-color', data.backgroundColor); // Set the background color
        $(".input-show").html(data.input);
        $(".input-effect").html(data.input);

    //    $(".input-show").css('background-color', data.backgroundColor); // Set the background color
      //  $(".input-show").css('border-color', data.backgroundColor);

        $(".description").html(data.description);
        $("body").fadeIn();
    }
    if (event.data.type == 'click') {
        $(".input-effect").fadeIn();
        setTimeout(() => { $(".input-effect").hide(); }, 300);
    }
    if (event.data.type == 'hideui') {
        $("body").fadeOut();
    }
})
