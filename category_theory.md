---
layout: default
title: category_theory
---
<script language="javascript">
    function cat1() {
	     document.getElementById("category_game").setAttribute("usemap", "#notHome");
	     document.getElementById("category_game").src = "/Category-1.jpg";

    }
    function cat2() {
             document.getElementById("category_game").setAttribute("usemap", "#notHome");
	     document.getElementById("category_game").src = "/Category-2.jpg";

    }
    function cat3() {
	     document.getElementById("category_game").setAttribute("usemap", "#notHome");
	     document.getElementById("category_game").src = "/Category-3.jpg";

    }
    function home() {
	     document.getElementById("category_game").src = "/game_home.jpg";
	     document.getElementById("category_game").setAttribute("usemap","#home");
}
</script>

<map name="home">
    <area target="_blank" alt="What could it be????" title="What could it be????" nohref coords="45,28,364,242" shape="rect" onClick="cat1()">
    <area target="_blank" alt="Hmm wonder what this one is..." title="Hmm wonder what this one is..." nohref coords="423,246,757,27" shape="rect" onClick="cat2()">
    <area target="_blank" alt="Could this be it!? " title="Could this be it!? " nohref coords="424,544,752,332" shape="rect" onClick="cat3()">
</map>

<map name="notHome">
     <area target="_blank" alt="Go Back" title="Go Back" nohref coords="98,597,18,531" shape="rect" onClick="home()">
</map>

## Category Theory
___

Over the spring semester of 2020 I had the
pleasure of reading "An Invitation to Applied Category Theory" by [Fong and Spivak](arXiv:1803.05316) through
the University of Minnesota's Directed Reading Program. This was my
first real exposure to abstract math and it was quite an eye
opening experience. Surprisingly, my biggest takeaway from this reading was
not a complex theorem or result but a new way of thinking about
problems. Fong and Spivak emphasize how the often overwhelming
abstractness of category theory is its most valuable feature. This is shown by the ease at which category theory is applied to a multitude of different problems, hence why it is *Applied*
category theory. Below, I hope to introduce you to the groundwork of
category theory and give you an idea of what this mystical *new way
of thinking* is.

*So what is category theory?* I found myself asking as I began this
reading. Roughly, category theory is the study of structures and the
things which act on those structures. *OK you just described all of
Math, and literally any science,* my more critical readers might be
thinking. Well, the truth is that's the whole point of category
theory. The generality of the ideas found in category theory allow
themselves to be applied to an almost endless supply of more concrete
fields and give a different categorical view on those fields.

A Category is a mathematical structure which consists of two
parts.  First, we denote a collection of things called objects. Given a category, C, we write this as Ob(C). This
is very much like a set, except there are special cases where this can be
bigger due to weird set theory paradoxes. Along with this, for every 2
objects, x and y, we specify a set hom(x,y), called the morphisms for
x to y. This can be thought of
as a set of functions from x to y except, you guessed it, much more
*general*. Sometimes if we want to talk about a specific f in hom(x,y), we simply write the familiar f:x->y. There also has to be some notion of an identity morphisms
and compositions of morphisms, but these are tangental from the main
idea of a category.

Of course, all these defintions and words make little sense without
examples. The framework of a category is incredibly versitile and can
encapsulate pretty much any mathematical idea. Try clicking around
below to see what is hiding inside these three different categories.
<br>
### Click on the categories to see what they are holding
<img src="/game_home.jpg" class="game" usemap="#home" id="category_game">
<br>
Since a Category is a mathematical structure, we'd like ways to
transform one category into another. Lucky for us there is a way to do
this—functors! In simplest terms, a functor is a map between
categories. It sends objects to objects and morphisms to
morphisms. This photo from the great [Bartosz
Milewski](https://bartoszmilewski.com/2015/01/20/functors/) sums up
the idea of functors really great.
<br>
![Functors](/functor.jpeg)
<br>
As we can see, there are two categories, C and D. C has objects a and b
with a morphism f:a->b. Our functor, F, sends a->F(a), b->F(b), and
f->F(f). Importantly, F perserved our morphisims in C and mapped them
to D. In other words, f:a->b in C implies that there exists an
F(f):F(a)->F(b). This notion is very important to functors and helps
them perserve cool ideas that are the foundations of cateogry theory.



In a [talk](http://www.ams.org/notices/200902/rtx090200212p.pdf) about the history of mathematics, Freeman Dyson
interestingly opens "Mathematics needs both birds and frogs." Birds
view math soaring high in the sky, seeing broad concepts which unify
all of our mathematical theories. Frogs view the nitty gritty bits of
our mathematical world and dedicate themselves to a specific part of
our mathematical land. Category theory is wholeheartedly a bird field
of mathematics. In fact, it might even be the [Rüppell's
vulture](https://en.wikipedia.org/wiki/R%C3%BCppell%27s_vulture) of mathematics. Regardless of this, I believe at least a working knowledge of
category theory is essential for a career in mathematics. Even
if your destiny is to be a frog, it always helps to be a frog with a periscope. 

![All credit to Rose Bauer for the drawing, I have no artistic talent](/Frog.png)

