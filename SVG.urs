(*

A very minimal subset of SVG -- just enough to draw graphs, &c.

Example:

  val html5logo : xbody = <xml>
      <svg xmlns="http://www.w3.org/2000/svg" width="512" height="512" viewbox="0 0 512 512" preserveaspectratio="XMaxYMid meet">
        <path fill="#E34F26" d="M71,460 L30,0 481,0 440,460 255,512"/>
        <path fill="#EF652A" d="M256,472 L405,431 440,37 256,37"/>
        <path fill="#EBEBEB" d="M256,208 L181,208 176,150 256,150 256,94 255,94 114,94 115,109 129,265 256,265zM256,355 L255,355 192,338 188,293 158,293 132,293 139,382 255,414 256,414z"/>
        <path fill="#FFF" d="M255,208 L255,265 325,265 318,338 255,355 255,414 371,382 372,372 385,223 387,208 371,208zM255,94 L255,129 255,150 255,150 392,150 392,150 392,150 393,138 396,109 397,94z"/>
      </svg>
    </xml>

*)

(* SVG Elements | <svg/> <g/> <rect/> <polyline/> <polygon/> <path/> *)

con svg_attr_stroke = [ Stroke = string, Stroke_width = string ]
con svg_attr_fill = [ Fill = string, Fill_opacity = string ]
con svg_attr_presentation = svg_attr_stroke ++ svg_attr_fill ++ [ Opacity = string ]
con svg_attr_points = [ Points = string ]
con svg_text_attr = [ X = string, Y = string,Font_family = string, Font_size = string, Letter_spacing = string, Transform = string, Text_anchor = string ]

con svg_tag = [ Xmlns = string, Width = string, Height = string, Opacity = string, Preserveaspectratio = string, Viewbox = string ]
con svg_tag_rect = [ X = string, Y = string, Width = string, Height = string] ++ svg_attr_presentation
con svg_tag_circle = [ Cx = string, Cy = string, R = string ]
con svg_tag_path = [ D = string ] ++ svg_attr_presentation
con svg_tag_polyline = svg_attr_points ++ svg_attr_presentation
con svg_tag_text = svg_text_attr ++ svg_attr_presentation

val svg : bodyTag svg_tag
val g : bodyTag svg_attr_presentation
val rect : bodyTag svg_tag_rect
val circle : bodyTag svg_tag_circle
val polyline : bodyTag svg_tag_polyline
val polygon : bodyTag svg_tag_polyline
val path : bodyTag svg_tag_path
val text : bodyTag svg_tag_text

