# Marginalia

A theme for [my Micro.blog](https://micro.mickf.net), where I post in English and in French about books, music and whatever else I can't keep to myself.

It's editorial rather than minimal: Alegreya type, a heavy masthead, and a sidebar of topics beside the posts. Every post shows what it's about and what language it's in.

## Where it comes from

Marginalia started as a fork of [Tiny Theme](https://github.com/MattSLangford/Tiny-Theme-for-Micro.blog) by [Matt Langford](https://mattlangford.com), and I'm grateful for the solid base. It has since become its own theme: the look, the post layout and the styles are redesigned, and it adds topics and language support. It won't track upstream, so report problems here, not to Matt.

Tiny's Microhooks and plugin support are still here, so its [documentation](https://tiny.micro.blog) remains useful for those.

## How posts are organised

Categories do two jobs:

- **Language:** `English` or `French` sets a post's language, which drives its badge, date format and `lang` attribute. Posts with neither show no language at all.
- **Topics:** Books, Music, Politics, Tech, Pop Culture, Sustainability, Football, Basketball, Gaming and Places. The list, with its emojis and French labels, lives in `layouts/partials/topics.html`. A topic with no posts stays out of the sidebar, and any other category shows on its posts without an emoji.

## What it takes over from Blank

Micro.blog layers every theme over its [Blank theme](https://github.com/microdotblog/theme-blank). Marginalia replaces a few of Blank's files so that each page is its own canonical and search engines find the sitemap:

- `config.json` copies all of Blank's output formats and makes `/archive/` and `/photos/` permalinkable;
- `partials/microblog_head.html` drops Blank's extra canonical link;
- `robots.txt` adds a `Sitemap:` line;
- `_default/sitemap.xml` dates pages by their last edit and lists every category page.

When Blank changes one of these files, copy the change over.

## Testing

`test/run.sh` builds a fixture site and checks the rendered pages. It needs Hugo:

```sh
HUGO=/path/to/hugo test/run.sh
```

Run it on Micro.blog's recommended Hugo (0.158) before shipping. The theme also builds on 0.117.

## Credits

Theme code is under the MIT License, keeping Matt Langford's original copyright. [Alegreya](https://github.com/huertatipografica/Alegreya) and [Alegreya Sans](https://github.com/huertatipografica/Alegreya-Sans) are by Juan Pablo del Peral and Huerta Tipográfica, under the SIL Open Font License. [Font Awesome](https://fontawesome.com) icons are included for plugins and footers.
