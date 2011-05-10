$(".ajax_sign_in").live("click", function() {
  $.ajax({
    url: $(this).attr("href"),
    type: "GET",
    success: function(data) {
      $(".login_box").html(data)
    }
  });
  return false
})


function close_login_box() {
  $(".close_login_box").click(function() {
    $(".registration_box").hide()
  })
}

function open_comment() {
  $("#voit_link").click(function() {
    $(".voited_form").toggle("slow")
  })
  return false
}

$(document).ready(function() {
  $(".registration_box").draggable();
  $("#show_login_form").click(function() {
    $.ajax({
      url: $("#show_login_form").attr("href"),
      type: "GET",
      success: function(data) {
        $(".login_box").html(data)
        $(".registration_box").show()
      }
    });
    return false

    $(".registration_box").show()
  })

  close_login_box()


  $(".ajax_form").live("submit", function() {
    $.ajax({
      url: $(".ajax_form").attr("action"),
      data: $(".ajax_form").serialize(),
      type: "POST",
      error: function(data){$("#login_error").html("Неправильный email или пароль.")}
    });
    return false
  })

  $("#link_foget_password").live("click", function() {
    $.ajax({
      url: $(this).attr("href"),
      type: "GET",
      success: function(data){$(".login_box").html(data)}  
    })
    return false
  })
})

