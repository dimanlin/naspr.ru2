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
  $(".ajax_form").live("submit", function() {
    $.ajax({
      url: $(".ajax_form").attr("action"),
      data: $(".ajax_form").serialize(),
      type: "POST",
      error: function(data){$("#login_error").html("Неправильный email или пароль.")}
    });
    return false
  })
})

