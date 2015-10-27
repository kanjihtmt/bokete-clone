$ ->
  $(".gray-box .pickup-file").click (e) ->
    $(".gray-box input[type='file']").trigger('click')

  $(".gray-box input[type='file']").change (e) ->
    e.preventDefault()
    if !this.files.length
      return
    file = $(this).prop('files')[0]
    fr = new FileReader()
    fr.onload = ->
      $('#previewImg').attr('src', fr.result).css('display', 'inline')
    fr.readAsDataURL(file)
