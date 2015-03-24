---
layout: page
title: Slides
permalink: /slides/
---

<ul>
{% for slide in site.slides %}
    <li>
        <a class="slide-entry" href="{{ slide.url }}" target="_slides">{{ slide.title }}:</a>
        <small>{{ slide.description }}</small>
    </li>
{% endfor %}
</ul>