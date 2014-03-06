---
---

$ () ->

  $('.post-content').each (i, postContent) ->
    $(postContent).find('img').each (i, img) ->
      $img = $(img)
      $img.closest('p', postContent)
        .css('text-align', 'center')

  $(".footer .weixin").on "mousedown", (e) ->
    e.preventDefault()
    weixinInfo = $(".weixin-info")
    if $(document).width() < 768
      weixinInfo.css({ left: $(this).offset().left - 32 })
        .fadeToggle()
    else
      weixinInfo.fadeToggle()
    false

  $(document).on "mousedown", (e) ->
    weixinInfo = $(".weixin-info")
    weixinInfo.fadeOut()

