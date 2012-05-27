$ ->
  loadBackground()

loadBackground = ->
  imageURL=loadFlickrimage()
  console.log imageURL
  image500=load500pximage()
  console.log image500
  ($ '.flickr').attr 'src',imageURL
  ($ '.500px').attr 'src' ,image500


loadFlickrimage = ->
  api_key = ($ 'body').data("flickr")
  console.log api_key
  photo = null
  $.ajax
    async: false
    url: "http://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=#{api_key}&tags=blur%2Cblack%2Cwhite%2Clandscape&per_page=1&page=1&format=json&nojsoncallback=1"
    dataType: 'json'
    type: 'GET'
    success: (response, textStatus, jqXHR) ->
      console.log response
      photo =  response.photos.photo[0]
  "http://farm#{photo.farm}.staticflickr.com/#{photo.server}/#{photo.id}_#{photo.secret}_z.jpg"

load500pximage = ->
  api_key = ($ 'body').data("500px")
  console.log api_key
  photo = null
  $.ajax
    async: false
    url: "https://api.500px.com/v1/photos/search?consumer_key=#{api_key}&term=animal&tag=city&page=1&rpp1"
    dataType: 'json'
    type: 'GET'
    success: (response, textStatus, jqXHR) ->
      console.log response
      photo =  response.photos[0]
  photo.image_url
