debug "portal.coffee START"
@portal = ->
  debug "portal.js on ready"
  @shuffle = (element,dleft,dtop)=>
    left = element[0].offsetTop
    top  = element[0].offsetTop
    debug element[0].style
    debug element[0].style.zIndex
    debug dleft + element[0].style

    element.animate
      left: dleft + element.width(),
      top: dtop + element.height(),
      opacity: "-5",
      "border-radius": "100%",
      "zIndex": (element[0].style.zIndex-1),
      1000,
      ->
        console.log(element[0].style.width)
        element[0].style.opacity = '1'
        element[0].style.left = left
        element[0].style.top = top
        #element[0].style.zIndex = 1
        console.log element

      


  git = $ "#github"
  fb  = $ "#facebook"
  res = $ "#resume"
  ln  = $ "#linkedin"

  $("#face").click =>
    $('.active-tile').finish()
    page = $ "#page1"
    shuffle git, '-=', '-='
    shuffle ln,  '+=', '-='
    shuffle res, '+=', '+='
    shuffle fb,  '-=', '+='

    #
    # git.animate
    #   left: "-=" + git.width(),
    #   top: "-=" + git.height(),
    #   opacity: "-5",
    #   "border-radius": "100%",
    #   "zIndex": "-1"
    #   1000,
    #   ->
    #     git[0].style.opacity = '100%'
    #     git[0].style.left = ''
    # ln.animate
    #   left: "+=" + ln.width(),
    #   top: "-=" + ln.height(),
    #   opacity: "-5",
    #   "border-radius": "100%",
    #   1000
    # fb.animate
    #   left: "-=" + fb.width(),
    #   top: "+=" + fb.height(),
    #   opacity: "-5",
    #   "border-radius": "100%",
    #   1000
    # res.animate
    #   left: "+=" + res.width(),
    #   top: "+=" + res.height(),
    #   opacity: "-5",
    #   "border-radius": "100%",
    #   1000
###
    $("#face-frame").animate
      top: "30%",
      "border-radius": 1,
      1000
    $("#face").animate
      "border-radius": 2,
      1000
    $("#intro").show()
    $("#intro").animate
      opacity: "100",
      20000
    $("#page1").hide();
@split = =>
  console.log "portal.js on ready"
  git = $ "#github"
  fb  = $ "#facebook"
  res = $ "#resume"
  ln  = $ "#linkedin"
  $("#face").click =>
    console.log("CLICK!")
    git.animate
      left: "-=" + git.width(),
      top: "-=" + git.height(),
      opacity: "-5",
      "border-radius": "100%",
      1000
    ln.animate
      left: "+=" + ln.width(),
      top: "-=" + ln.height(),
      opacity: "-5",
      "border-radius": "100%",
      1000
    fb.animate
      left: "-=" + fb.width(),
      top: "+=" + fb.height(),
      opacity: "-5",
      "border-radius": "100%",
      1000
    res.animate
      left: "+=" + res.width(),
      top: "+=" + res.height(),
      opacity: "-5",
      "border-radius": "100%",
      1000
    $("#face-frame").animate
      top: "30%",
      "border-radius": 1,
      1000
    $("#face").animate
      "border-radius": 2,
      1000
    $("#intro").show()
    $("#intro").animate
      opacity: "100",
      20000
###
