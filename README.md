# Ur/Web Utils
A few small but useful Ur things.
# Quick Start
```
git clone https://github.com/fullreset/urweb-utils.git
```
Adding `library UrUtils` to your `urp` file(s) will include all the utilities contained here; or you can add them individually -- each utility has it's own `urp` file.
# SVG Usage
Minimal SVG usage in the wild: This is the html5 logo code copied directly into an `ur` file -- so this toy works to this extent at least.

```
open SVG

(* ... *)

val html5logo : xbody = <xml>
    <svg xmlns="http://www.w3.org/2000/svg" width="512" height="512" viewbox="0 0 512 512" preserveaspectratio="XMaxYMid meet">
      <path fill="#E34F26" d="M71,460 L30,0 481,0 440,460 255,512"/>
      <path fill="#EF652A" d="M256,472 L405,431 440,37 256,37"/>
      <path fill="#EBEBEB" d="M256,208 L181,208 176,150 256,150 256,94 255,94 114,94 115,109 129,265 256,265zM256,355 L255,355 192,338 188,293 158,293 132,293 139,382 255,414 256,414z"/>
      <path fill="#FFF" d="M255,208 L255,265 325,265 318,338 255,355 255,414 371,382 372,372 385,223 387,208 371,208zM255,94 L255,129 255,150 255,150 392,150 392,150 392,150 393,138 396,109 397,94z"/>
    </svg>
  </xml>
```
# FontAwesome Usage
Just a bunch of CSS classes, so nothing too interesting here. Adjust your URP as needed to include the FontAwesome 4.7.0 sources, and then:

```
open FontAwesome

(* ... *)

val icon : xbody = <xml> <i class={Basis.classes fa fa_code}/> </xml>
```

# Foundation Usage
Again, just a bunch of CSS classes. Adjust the URP as needed to include the Foundation 6.4.2 sources. and then:

```
open Foundation

(* ... *)

val snippet : xbody = <xml> 
     <div class={Basis.classes top_bar fluid}> 
       <div class={top_bar_left}> (* ... *) 
         <ul class={Basis.classes dropdown menu}>
           <li class={menu_text}>FOUNDATION!</li>
         </ul>
       </div>
     </div> 
   </xml>
````

As with `bootstrap3` conflicting class names are prefixed -- with `f6_` in this case. 
