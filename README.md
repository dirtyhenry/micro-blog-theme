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

## How posts look when shared

The head gives every page what search engines and link previews read:

- **Title:** a post's title, or the first sentence of an untitled post cut near 60 characters, followed by the site's title.
- **Description:** the post's Summary field if it's set, otherwise the start of the post, cut under 155 characters.
- **Image:** the post's first photo, else the card Micro.blog makes for it, else the **Default Share Card URL** set in the theme's settings (a 1200×630 image), else the avatar.
- **Language:** French posts get `<html lang="fr">`; every other page stays `en`.
- **Structured data:** a `BlogPosting` on each post, and the `Blog` and Mick on the homepage, as the same person www.mickf.net describes.

## Headings

Each page has one `<h1>`: the post's or page's title, the category's name, "Archive" or "Photos". The masthead is the `<h1>` only where the page has no heading of its own, the homepage and untitled posts.

## The archive

`/archive/` is titled "Archive", with a description and an intro counting the posts since the first one, then the categories and every post under its year's heading. Micro.blog only builds the one page, so years are anchors (`/archive/#2025`), not URLs of their own.

## What it takes over from Blank

Micro.blog layers every theme over its [Blank theme](https://github.com/microdotblog/theme-blank). Marginalia replaces a few of Blank's files so that each page is its own canonical, search engines find the sitemap, and `/archive/` reads as a page of its own:

- `config.json` copies all of Blank's output formats and makes `/archive/` and `/photos/` permalinkable;
- `partials/microblog_head.html` drops Blank's extra canonical link;
- `list.archivehtml.html` gives `/archive/` its title, intro and year headings;
- `list.photoshtml.html` gives `/photos/` a heading;
- `robots.txt` adds a `Sitemap:` line;
- `_default/sitemap.xml` lists every category page. It dates pages by publication, because Micro.blog bumps the last-modified date of hundreds of posts at once.

When Blank changes one of these files, copy the change over.

## Testing

`test/run.sh` builds a fixture site and checks the rendered pages. It needs Hugo:

```sh
HUGO=/path/to/hugo test/run.sh
```

Run it on Micro.blog's recommended Hugo (0.158) before shipping. The theme also builds on 0.117.

## Credits

Theme code is under the MIT License, keeping Matt Langford's original copyright. [Alegreya](https://github.com/huertatipografica/Alegreya) and [Alegreya Sans](https://github.com/huertatipografica/Alegreya-Sans) are by Juan Pablo del Peral and Huerta Tipográfica, under the SIL Open Font License. [Font Awesome](https://fontawesome.com) icons are included for plugins and footers.
