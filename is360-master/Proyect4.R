

#Proyect 4 
#is360
#Luis Hernandez

#For this proyect I use rvest to explorer IRon maiden a britihs heavy metal band website and collect some main data

install_github("hadley/rvest")
library(rvest)

url = "http://www.ironmaiden.com/"

ironmaidenmain = url %>%
  html()  %>%
  html_nodes("main") %>%
  html_text() 

ironmaiden

results:
> ironmaiden
[1] ""                    ""                    ""                    ""                   
[5] ""                    "Home"                "News"                "Tour"               
[9] "Gallery"             "Discography"         "The Band"            "Shop"               
[13] "Fanclub"             ""                    "FC Login"            "Help & Info"        
[17] "Privacy Policy"      "Terms & Conditions"  "How to Pay"          "Facebook"           
[21] "YouTube"             "Contact The Shop"    "e-news sign up"      "Website Development"
[25] "Keane Creative"     
> 


##Here is another example of the use or the rvest package, I foud more info abot the webesite.

moreinfo = url %>%
  html() %>%
  html_nodes("*")

then:

webdetails = moreinfo %>%
  html_attrs()


> webdetails
[[1]]
lang 
"en" 

[[2]]
NULL

[[3]]
content                 http-equiv 
"text/html; charset=utf-8"             "Content-Type" 

[[4]]
NULL

[[5]]
name                             content 
"description" "The Official Iron Maiden Website." 

[[6]]
name 
"keywords" 
content 
"iron, maiden, official, fanclub, heavy, metal, bruce, dickinson, steve, harris, nicko, mcbrain, dave, murray, adrian, smith, janick, gers, eddie, nowbhm, 666" 

[[7]]
name                           content 
"author" "Iron Maiden, www.ironmaiden.com" 

[[8]]
name        content 
"robots" "index,follow" 

[[9]]
name   content 
"RATING" "General" 

[[10]]
name         content 
"REVISIT-AFTER"             "5" 

[[11]]
name        content 
"DISTRIBUTION"       "Global" 

[[12]]
href                              rel 
"include_v2/standard/site.css?1"                     "stylesheet" 
type 
"text/css" 

[[13]]
href                                rel 
"include_v2/standard/imcustom.css"                       "stylesheet" 
type 
"text/css" 

[[14]]
href             rel            type 
"css/fecss.css"    "stylesheet"      "text/css" 

[[15]]
href                rel               type 
"css/tooltips.css"       "stylesheet"         "text/css" 

[[16]]
href            rel           type 
"css/form.css"   "stylesheet"     "text/css" 

[[17]]
href             rel            type 
"css/form1.css"    "stylesheet"      "text/css" 

[[18]]
type                   src 
"text/javascript" "scripts/tooltips.js" 

[[19]]
type                  src 
"text/javascript" "scripts/fe_java.js" 

[[20]]
src                       type 
"scripts/jquery-latest.js"          "text/javascript" 

[[21]]
src 
"build/mediaelement-and-player.min.js" 

[[22]]
rel                               href 
"stylesheet" "build/mediaelementplayer.min.css" 

[[23]]
src                         type 
"include_v2/jquery.cycle.js"            "text/javascript" 

[[24]]
type 
"text/javascript" 

[[25]]
src 
"scripts/cookies/jquery.cookiebar.js" 

[[26]]
rel                                   href 
"stylesheet" "scripts/cookies/jquery.cookiebar.css" 

[[27]]
type           charset 
"text/javascript"           "UTF-8" 

[[28]]
type                            src                        charset 
"text/javascript" "xajax/xajax_js/xajax_core.js"                        "UTF-8" 

[[29]]
type           charset 
"text/javascript"           "UTF-8" 

[[30]]
type           charset 
"text/javascript"           "UTF-8" 

[[31]]
type 
"text/javascript" 

[[32]]
NULL

[[33]]
id 
"wrapper" 

[[34]]
id 
"header" 

[[35]]
id 
"sm" 

[[36]]
NULL

[[37]]
NULL

[[38]]
target                                  href 
"_blank" "https://www.facebook.com/ironmaiden" 

[[39]]
src                      alt                    title 
"images_v2/facebook.png"               "Facebook"               "Facebook" 
width                   height                   border 
"39"                     "38"                      "0" 

[[40]]
NULL

[[41]]
target 
"_blank" 
href 
"http://www.youtube.com/user/ironmaiden?blend=1&ob=4" 

[[42]]
src                      alt                    title 
"images_v2/you-tube.png"               "You Tube"               "You Tube" 
width                   height                   border 
"39"                     "38"                      "0" 

[[43]]
NULL

[[44]]
target                            href 
"_blank" "http://twitter.com/ironmaiden" 

[[45]]
src                     alt                   title 
"images_v2/twitter.png"               "Twitter"               "Twitter" 
width                  height                  border 
"39"                    "38"                     "0" 

[[46]]
NULL

[[47]]
target 
"_blank" 
href 
"https://plus.google.com/b/113190342152462157683/#113190342152462157683/posts" 

[[48]]
src                         alt                       title 
"images_v2/google-plus.png"                   "Google+"                   "Google+" 
width                      height                      border 
"39"                        "38"                         "0" 

[[49]]
href 
"login.php?fpage=/" 

[[50]]
id 
"logo" 

[[51]]
id 
"navwrapper" 

[[52]]
id 
"srch" 

[[53]]
NULL

[[54]]
id                 name               method               action 
"frmSearch"          "frmSearch"                "GET" "search_results.php" 

[[55]]
type      name        id     value      size     class 
"text"      "st"      "st"        ""      "20" "srchBox" 

[[56]]
type    value    class 
"submit" "Search"    "but" 

[[57]]
id 
"nav" 

[[58]]
NULL

[[59]]
NULL

[[60]]
NULL

[[61]]
href       title 
"index.php"      "Home" 

[[62]]
NULL

[[63]]
href            title 
"main-news.html"           "News" 

[[64]]
NULL

[[65]]
href           title 
"tourdates.php"          "Tour" 

[[66]]
NULL

[[67]]
href                    title 
"through-the-years.html"                "Gallery" 

[[68]]
NULL

[[69]]
href              title 
"discography.html"      "Discography" 

[[70]]
NULL

[[71]]
href           title 
"the-band.html"      "The Band" 

[[72]]
NULL

[[73]]
href                    title 
"shop-landing-page.html"                   "Shop" 

[[74]]
NULL

[[75]]
href          title 
"fanclub.html"      "Fanclub" 

[[76]]
id 
"home" 

[[77]]
id 
"banner" 

[[78]]
NULL

[[79]]
href 
"http://www.ironmaiden.com/classic-80s-vinyl-reissues-on-the-way.html" 
title 
"Vinyl" 

[[80]]
src                                     alt 
"inc_fetchbanner.php?id=163_1414358063"                                 "Vinyl" 

[[81]]
NULL

[[82]]
href 
"http://www.ironmaiden.com/sonisphere-2014.html" 
title 
"On tour" 

[[83]]
src                                     alt 
"inc_fetchbanner.php?id=158_1414358063"                               "On tour" 

[[84]]
class 
"col-left" 

[[85]]
class 
"box1" 

[[86]]
allowfullscreen 
"" 
frameborder 
"0" 
height 
"305" 
mozallowfullscreen 
"" 
src 
"https://player.vimeo.com/video/109452254?title=0&byline=0&portrait=0&color=ffffff" 
webkitallowfullscreen 
"" 
width 
"530" 

[[87]]
class 
"box2" 

[[88]]
href                              title 
"iron_maiden_shop.php" "Official Online Iron Maiden Shop" 

[[89]]
src                                alt 
"images_v2/hm-box-shop.jpg" "Official Online Iron Maiden Shop" 
title 
"Official Online Iron Maiden Shop" 

[[90]]
class 
"box3" 

[[91]]
href 
"http://www.ironmaidenbeer.com/" 
target 
"_blank" 
title 
"Trooper - Premium British Beer - Iron Maiden & Robinsons Brewery" 

[[92]]
src 
"images_v2/trooper_im.png" 
alt 
"Trooper - Premium British Beer - Iron Maiden & Robinsons Brewery" 
title 
"Trooper - Premium British Beer - Iron Maiden & Robinsons Brewery" 
width 
"260" 
height 
"355" 

[[93]]
class 
"col-right" 

[[94]]
class 
"latest-news" 

[[95]]
NULL

[[96]]
class 
"nbox" 

[[97]]
src 
"inc_fetchnewsdata.php?dtype=newsstoryleadimage&nsid=991&261014211423" 
width 
"90" 

[[98]]
class 
"txt" 

[[99]]
NULL

[[100]]
NULL

[[101]]
href 
"maiden-vinyl-facts---part-1.html" 

[[102]]
class 
"clear" 

[[103]]
class 
"nbox" 

[[104]]
src 
"inc_fetchnewsdata.php?dtype=newsstoryleadimage&nsid=990&261014211423" 
width 
"90" 

[[105]]
class 
"txt" 

[[106]]
NULL

[[107]]
NULL

[[108]]
href 
"heavy-metal-truants-auction---encore.html" 

[[109]]
class 
"clear" 

[[110]]
class 
"nbox" 

[[111]]
src 
"inc_fetchnewsdata.php?dtype=newsstoryleadimage&nsid=989&261014211423" 
width 
"90" 

[[112]]
class 
"txt" 

[[113]]
NULL

[[114]]
NULL

[[115]]
href 
"classic-80s-vinyl-reissues-on-the-way.html" 

[[116]]
class 
"clear" 

[[117]]
id     class 
"twitter" "twitter" 

[[118]]
class                                     href 
"twitter-timeline"         "https://twitter.com/IronMaiden" 
data-tweet-limit                           data-widget-id 
"3"                     "365807817959026690" 
width                                   height 
"437"                                    "305" 
data-chrome 
"noheader nofooter noborder transparent" 

[[119]]
NULL

[[120]]
class 
"clear" 

[[121]]
id 
"ftr" 

[[122]]
NULL

[[123]]
NULL

[[124]]
href               title 
"login.php?fpage=/"             "Login" 

[[125]]
NULL

[[126]]
href                            title 
"iron-maiden-help-and-info.html"                    "Help & Info" 

[[127]]
NULL

[[128]]
href                             title 
"iron-maiden-privacy-policy.html"                  "Privacy Policy" 

[[129]]
NULL

[[130]]
href                                   title 
"iron-maiden-terms-and-conditions.html"                    "Terms & Conditions" 

[[131]]
NULL

[[132]]
href             title 
"how-to-pay.html"      "How to Pay" 

[[133]]
NULL

[[134]]
href                                title 
"http://www.facebook.com/ironmaiden"                           "Facebook" 

[[135]]
NULL

[[136]]
href                               title 
"http://www.youtube.com/ironmaiden"                           "YouTube" 

[[137]]
NULL

[[138]]
href                      title 
"contact-iron-maiden.html"         "Contact The Shop" 

[[139]]
NULL

[[140]]
href                                  title 
"http://mailout.ironmaiden.com/lists/"                       "e-news sign up" 

[[141]]
class 
"cardlogos" 

[[142]]
class 
"keane" 

[[143]]
href 
"http://www.keanecreative.co.uk/web-design.asp" 
title 
"Website Development" 

[[144]]
href                             title 
"http://www.keanecreative.co.uk/"                  "Keane Creative" 

[[145]]
src 
"//tags.w55c.net/rs?id=e13bad0663e94292a6d0574ea4f7db55&t=marketing" 

[[146]]
NULL

[[147]]
NULL

[[148]]
height 
"1" 
width 
"1" 
border 
"0" 
alt 
"" 
style 
"display:none" 
src 
"https://www.facebook.com/tr?id=1454758574736309&ev=NoScript" 

[[149]]
type 
"text/javascript" 

[[150]]
type 
"text/javascript" 
src 
"//www.googleadservices.com/pagead/conversion.js" 

[[151]]
NULL

[[152]]
style 
"display:inline;" 

[[153]]
height 
"1" 
width 
"1" 
style 
"border-style:none;" 
alt 
"" 
src 
"//googleads.g.doubleclick.net/pagead/viewthroughconversion/979879715/?value=0&guid=ON&script=0" 

[[154]]
NULL


