$ ->
  loadBackground()

loadBackground = ->
  imageURL=loadFlickrimage()
  ($ '.flickr').attr 'src',imageURL
  #image500=load500pximage()
  ($ '.flickr').attr 'src',imageURL
  #($ '.500px').attr 'src' ,image500
  load500pximage()

loadFlickrimage = ->
  api_key = ($ 'body').data("flickr")
  photo = null
  numb = Math.random(Math.floor()*0+100)
  $.ajax
    async: false
    url: "http://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=#{api_key}&tags=blur%2Cblack%2Cwhite%2Clandscape&per_page=#{numb}&page=1&format=json&nojsoncallback=1"
    dataType: 'json'
    type: 'GET'
    success: (response, textStatus, jqXHR) ->
      photo =  response.photos.photo[0]
  a="http://farm#{photo.farm}.staticflickr.com/#{photo.server}/#{photo.id}_#{photo.secret}_z.jpg"
  a

load500pximage = ->
  api_key = ($ 'body').data("500px")
  photo = null
  url = "https://api.500px.com/v1/photos?feature=popular&consumer_key=VyHAVehyT6HHXuDLvnC3AiHRjFZFKajOIYKmBHMW"
  $.getJSON url, (data)->
    console.log data
