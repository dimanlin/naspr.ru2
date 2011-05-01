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
