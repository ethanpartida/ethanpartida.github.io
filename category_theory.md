---
layout: default
title: category_theory
---
<script language="javascript">
    function triangle() {
	     document.getElementById("category_game").setAttribute("usemap", "#triangle");
	     document.getElementById("category_game").src = "/game_triangle.jpg";

    }
    function home() {
	     document.getElementById("category_game").src = "/game_home.jpg";
	     document.getElementById("category_game").setAttribute("usemap","#home");
}
</script>

<map name="home">
        <area target="_blank" alt="Triangle" title="Triangle" nohref coords="187,266,257,64,109,69" shape="poly" onClick="triangle()">
</map>

<map name="triangle">
    <area target="_blank" alt="Home" title="Home" nohref coords="527,790,431,626,255,625,343,464,251,305,420,304,530,149,629,305,806,312,723,473,803,613,625,632" shape="poly" onClick="home()">
</map>

## Category Theory
___

Over the spring semester of 2020 I had the
pleasure of reading "An Invitation to Applied Category Theory"(CITE) through
the University of Minnesota's Directed Reading Program. This was my
first real exposure to abstract math and it was quite an eye
opening experience. Quite surprisingly,my biggest takeaway from this reading was
not a complex theorem or result but a new way of thinking about
problems. Fong and Spivak emphasize how the often overwhelming
abstractness of category theory is its most valuable feature. This is shown by the ease at which category theory is applied to a multitude of different problems (hence the *Applied*
Category Theory). Below, I hope to introduce you to the groundwork of
category theory and give you and idea of what this mystical *new way
of thinking* is.

"So what is Category Theory?" I found myself asking as I began this
reading. Roughly, Category Theory is the study of structures and
things which act on those structures. "OK you just described all of
Math, and literally any science", my more critical readers might be
thinking. Well the truth is, that's the whole point of category
theory. The generality of the ideas found in category theory allow
themselves to be applied to an almost endless supply of more concrete
fields and give a different categorical view on those fields.


### Click on the triangle and to do stuff
<img src="/game_home.jpg" usemap="#home" id="category_game">

Now explain cats, funcs, and above examples.



"Math needs frogs and birds"-[Dyson](http://www.ams.org/notices/200902/rtx090200212p.pdf) Even if your destiny is to be a frog, it
always helps to be a frog with a periscope. WILL MAKE FANCIER BUT YAH GET THE POINT

![Frog](/Frog.png)

