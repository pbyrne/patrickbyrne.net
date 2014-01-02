---
date: 2014-01-01
excerpt: We can rebuild it. We have the technology.
layout: project
techs: [Middleman, Sass, Slim]
title: patrickbyrne.net 2.0
---

## Why Did I Make This?

I had three goals in mind when I rebuilt the site from [Jekyll] to [Middleman]:

* To leverage Middleman's more general-purpose nature (Jekyll is specifically a
  blogging platform, while this isn't really a blog).
* To lay the groundwork to make it easier to move the site closer to what I
  want it to be in the future.
* To learn something new.

This site was originally built with [Jekyll], which was a fine introduction
into building static sites. But I found Jekyll limiting, in part because it was
created as a blogging engine, but this site isn't a blog. I think of it more as
a place that I own that I use to point to where else on the internet you can
find me, and also as a bit of a resume.

Because of this, I found myself working around Jekyll more than using its
strengths. While attending the [Madison Ruby Conference][madruby] this summer,
I was introduced to [Middleman], a general-purpose static-site builder. I was
intruiged by its simplicity, but also its built-in features like its asset
pipeline, cache busting, and its ease of extension. By contrast, I found Jekyll
very hard to extend in any meaningful way.

With this foundation in place, I can start more incremental teaks to the site,
like maybe writing a bit more in the brand-new [Notes section][notes] or maybe
move [my presentations themselves][presos] off of their own Jekyll site and
into this single codebase.

[Jekyll]: http://jekyllrb.com/
[madruby]: http://madisonruby.org/
[Middleman]: http://middlemanapp.com/
[notes]: http://patrickbyrne.net/notes/
[presos]: http://presentations.patrickbyrne.net/

## What Did I Learn?

The most obvious thing I learned was the Middleman toolchain.  My initial goal
was to port over the existing site more-or-less intact, which was shockingly
easy to accomplish because of Middleman's ease-of-use.

I did make one change, breaking my presentations into their own section, rather
than being shoehorned into "projects". To keep old URLs working, I learned more
about Nginx redirects.

