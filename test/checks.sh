# Post language
has english-book/index.html 'english" lang="en">'
has english-book/index.html '>EN</abbr>'
has english-book/index.html 'Oct 25, 2026</time></a> · in English'
has french-multi/index.html 'french" lang="fr">'
has french-multi/index.html '>FR</abbr>'
has french-multi/index.html '1er oct. 2026</time></a> · en français'
has french-unlisted/index.html '10 sept. 2026</time></a> · en français'

# An Unlabelled post shows no language and keeps the English date
has backlog/index.html 'Sep 20, 2026</time>'
lacks backlog/index.html ' · in English'
lacks backlog/index.html '</abbr>'
has backlog/index.html 'music" lang="">'
has index.html 'music" lang="">'
lacks index.html 'ZgotmplZ'
lacks backlog/index.html 'ZgotmplZ'

# The date links to the post, without Tiny's infinity sign
has english-book/index.html 'class="post-date u-url"'
lacks english-book/index.html '∞'
lacks index.html '∞'

# The language shows in lists too
has index.html '1er oct. 2026</time></a> · en français'
has categories/books/index.html 'Oct 25, 2026</time></a> · in English'

# Topics: the first in the fixed list leads, every topic is labelled
has french-multi/index.html 'aria-label="Politique">🗳️</span>'
has french-multi/index.html '>Politique</a>, <a href="/categories/tech/">Tech</a>'
has english-book/index.html 'aria-label="Books">📚</span>'
has english-book/index.html '<a href="/categories/books/">Books</a>'

# Language categories are never shown as topics
lacks french-multi/index.html '/categories/french/'
lacks english-book/index.html '/categories/english/'
lacks english-no-topic/index.html 'post-topics'

# A category outside the fixed list keeps its name but gets no emoji
has french-unlisted/index.html '<a href="/categories/cooking/">Cooking</a>'
lacks french-unlisted/index.html 'class="post-emoji"'

# A post with no categories keeps only its date
lacks bare/index.html 'class="post-emoji"'
lacks bare/index.html 'post-topics'
has bare/index.html 'Sep 1, 2026</time>'

# Titled posts
has french-unlisted/index.html '<h1 class="p-name">Un titre</h1>'

# Topics sidebar: home and topic pages only, with empty topics hidden
has index.html 'class="topics-sidebar"'
has index.html '<details class="topics-menu">'
has index.html 'Topics · Sujets'
has index.html '<a class="topic" href="/categories/pop-culture/">'
lacks index.html '/categories/places/'
lacks index.html '/categories/gaming/'
has categories/books/index.html 'class="topics-sidebar"'
lacks english-book/index.html 'class="topics-sidebar"'
lacks about/index.html 'class="topics-sidebar"'
lacks archive/index.html 'class="topics-sidebar"'

# Topic pages carry their emoji, language pages do not
has categories/books/index.html '<span aria-hidden="true">📚</span> Books</h1>'
has categories/french/index.html '<h1 class="p-name category-title">French</h1>'

# The masthead drops the site description, previews keep it
lacks index.html '<p class="description">'
has index.html 'name="description" content="A blog that should not show this line, at Memo Bank."'
has index.html 'src="https://example.org/avatar.jpg"'

# Every page is its own canonical, once
has archive/index.html '<link rel="canonical" href="https://example.org/archive/">'
lacks archive/index.html 'rel="canonical" href="https://example.org/"'
has photos/index.html '<link rel="canonical" href="https://example.org/photos/">'
lacks photos/index.html 'rel="canonical" href="https://example.org/"'
has index.html '<link rel="canonical" href="https://example.org/">'
has page/2/index.html '<link rel="canonical" href="https://example.org/page/2/">'
lacks page/2/index.html 'rel="canonical" href="https://example.org/"'
has categories/books/index.html '<link rel="canonical" href="https://example.org/categories/books/">'
has english-book/index.html '<link rel="canonical" href="https://example.org/english-book/">'

# robots.txt points crawlers at the sitemap
has robots.txt 'User-agent: *'
has robots.txt 'Sitemap: https://example.org/sitemap.xml'

# The sitemap dates posts by publication, since Micro.blog bumps lastmod in bulk, and lists the category pages
has sitemap.xml '<loc>https://example.org/english-book/</loc> <lastmod>2026-10-25T23:45:00+02:00</lastmod>'
has sitemap.xml '<loc>https://example.org/bare/</loc> <lastmod>2026-09-01T12:00:00+02:00</lastmod>'
has sitemap.xml '<loc>https://example.org/categories/books/</loc>'
has sitemap.xml '<loc>https://example.org/about/</loc>'
has sitemap.xml '<loc>https://example.org/archive/</loc>'
lacks sitemap.xml '<loc>https://example.org/categories/</loc>'
lacks sitemap.xml '<loc>https://example.org/page/'
lacks sitemap.xml '<loc>https://example.org/notes/</loc>'

# Uploaded photos show resized by Micro.blog, fall back to their original, and link to it
has uploaded-photos/index.html '<a href="https://example.org/uploads/2026/relative.png" class="full-res"><img src="https://micro.blog/photos/1320x/https://example.org/uploads/2026/relative.png" data-original="https://example.org/uploads/2026/relative.png" onerror="this.onerror=null;this.src=this.dataset.original"></a>'
has uploaded-photos/index.html '<a href="https://example.org/uploads/2026/absolute.jpg" class="full-res"><img alt="Absolute" src="https://micro.blog/photos/1320x/https://example.org/uploads/2026/absolute.jpg" data-original="https://example.org/uploads/2026/absolute.jpg" onerror="this.onerror=null;this.src=this.dataset.original" width="600" height="400"></a>'
has page/2/index.html 'class="full-res"><img src="https://micro.blog/photos/1320x/https://example.org/uploads/2026/relative.png" data-original="https://example.org/uploads/2026/relative.png" onerror="this.onerror=null;this.src=this.dataset.original"></a>'
has categories/english/index.html 'class="full-res"><img src="https://micro.blog/photos/1320x/https://example.org/uploads/2026/relative.png"'

has uploaded-photos/index.html '<a href="https://cdn.uploads.micro.blog/98522/2026/cdn.png" class="full-res"><img src="https://micro.blog/photos/1320x/https://cdn.uploads.micro.blog/98522/2026/cdn.png" data-original="https://cdn.uploads.micro.blog/98522/2026/cdn.png" onerror="this.onerror=null;this.src=this.dataset.original" width="514" height="600" alt=""></a>'

# A photo that already links somewhere keeps its link
has uploaded-photos/index.html '<a href="https://example.org/elsewhere/"><img src="https://micro.blog/photos/1320x/https://example.org/uploads/2026/linked.jpg" data-original="https://example.org/uploads/2026/linked.jpg" onerror="this.onerror=null;this.src=this.dataset.original"></a>'

# GIFs keep animating, and other sites' images are left alone
has uploaded-photos/index.html '<img src="https://example.org/uploads/2026/animated.gif">'
has uploaded-photos/index.html '<img src="https://elsewhere.example/photo.jpg">'

# Titles: a titled post uses its title, an untitled one its first sentence cut near 60 characters, both followed by the site title
has french-unlisted/index.html '<title>Un titre | Mick’s Micro Blog</title>'
has french-unlisted/index.html '<meta property="og:title" content="Un titre | Mick’s Micro Blog">'
has long-sentence/index.html '<title>How to remove a stuck SIM tray from an old phone without … | Mick’s Micro Blog</title>'
has long-sentence/index.html '<meta property="og:title" content="How to remove a stuck SIM tray from an old phone without … | Mick’s Micro Blog">'
has french-multi/index.html '<title>Une note sur la tech et la politique. | Mick’s Micro Blog</title>'
has index.html '<title>Mick’s Micro Blog</title>'
has categories/books/index.html '<title>Books | Mick’s Micro Blog</title>'

# Descriptions: the post's Summary if set, otherwise its text cut at a word under 155 characters
has summarized/index.html '<meta name="description" content="How to remove a stuck SIM tray, step by step.">'
has summarized/index.html '<meta property="og:description" content="How to remove a stuck SIM tray, step by step.">'
has long-sentence/index.html '<meta name="description" content="How to remove a stuck SIM tray from an old phone without breaking anything inside it? Use a paperclip. Then a second sentence that must not reach the …">'
has long-sentence/index.html '<meta property="og:description" content="How to remove a stuck SIM tray from an old phone without breaking anything inside it? Use a paperclip. Then a second sentence that must not reach the …">'
has bare/index.html '<meta name="description" content="Nothing at all.">'
lacks bare/index.html 'name="og:description"'
has index.html '<meta property="og:description" content="A blog that should not show this line, at Memo Bank.">'
lacks index.html 'name="og:description"'

# Share image: the post's first photo, else Micro.blog's card, else the site's default card, always as a large card
has with-photos/index.html '<meta property="og:image" content="https://example.org/uploads/2026/first.jpg">'
has with-photos/index.html '<meta name="twitter:image" content="https://example.org/uploads/2026/first.jpg">'
lacks with-photos/index.html 'content="https://example.org/uploads/2026/second.jpg"'
lacks with-photos/index.html 'content="https://example.org/opengraph/with-photos.png"'
has carded/index.html '<meta property="og:image" content="https://example.org/opengraph/carded.png">'
has bare/index.html '<meta property="og:image" content="https://example.org/uploads/card.png">'
has bare/index.html '<meta name="twitter:card" content="summary_large_image">'
lacks bare/index.html 'content="summary"'
has index.html '<meta property="og:image" content="https://example.org/uploads/card.png">'
lacks index.html 'property="og:image" content="https://example.org/avatar.jpg"'

# Open Graph: the canonical URL, articles for posts with their publication time, a website elsewhere
has english-book/index.html '<meta property="og:url" content="https://example.org/english-book/">'
has english-book/index.html '<meta property="og:type" content="article">'
has english-book/index.html '<meta property="article:published_time" content="2026-10-25T23:45:00+02:00">'
has page/2/index.html '<meta property="og:url" content="https://example.org/page/2/">'
has index.html '<meta property="og:type" content="website">'
lacks index.html 'article:published_time'
has about/index.html '<meta property="og:type" content="website">'

# The page's language: French for French posts, English everywhere else
has french-multi/index.html '<html lang="fr">'
has english-book/index.html '<html lang="en">'
has backlog/index.html '<html lang="en">'
has index.html '<html lang="en">'

# Structured data on posts: a BlogPosting by Mick, dated by publication since Micro.blog bumps lastmod in bulk
has french-multi/index.html '<script type="application/ld+json">{"@context":"https://schema.org","@type":"BlogPosting",'
has french-multi/index.html '"headline":"Une note sur la tech et la politique."'
has french-multi/index.html '"datePublished":"2026-10-01T12:00:00+02:00"'
has french-multi/index.html '"inLanguage":"fr"'
has french-multi/index.html '"url":"https://example.org/french-multi/"'
has french-multi/index.html '"image":"https://example.org/uploads/card.png"'
has french-multi/index.html '"author":{"@id":"https://www.mickf.net/#person","@type":"Person","name":"Mick F","url":"https://www.mickf.net/"}'
has english-book/index.html '"dateModified":"2026-10-25T23:45:00+02:00"'
has english-book/index.html '"inLanguage":"en"'
has with-photos/index.html '"image":"https://example.org/uploads/2026/first.jpg"'
has french-unlisted/index.html '"headline":"Un titre"'
lacks backlog/index.html '"inLanguage"'
lacks about/index.html 'BlogPosting'

# Structured data on the homepage: the Blog, and Mick with his profiles elsewhere
has index.html '<script type="application/ld+json">{"@context":"https://schema.org","@graph":[{"@id":"https://example.org/#blog","@type":"Blog",'
has index.html '"name":"Mick’s Micro Blog"'
has index.html '"description":"A blog that should not show this line, at Memo Bank."'
has index.html '"author":{"@id":"https://www.mickf.net/#person"}'
has index.html '"sameAs":["https://www.mickf.net/","https://github.com/dirtyhenry","https://micro.blog/dirtyhenry","https://bsky.app/profile/mickf.net"]'
has index.html '"image":"https://example.org/avatar.jpg"'
lacks page/2/index.html 'application/ld+json'
lacks categories/books/index.html 'application/ld+json'
lacks archive/index.html 'application/ld+json'
lacks photos/index.html 'application/ld+json'

# Descriptions are plain text: entities from the post or the site's description are decoded, not escaped twice
has quoted/index.html '<meta name="description" content="If you’ve ever tried “this”, you’ll know.">'
has quoted/index.html '<meta property="og:description" content="If you’ve ever tried “this”, you’ll know.">'
lacks quoted/index.html '&amp;rsquo;'
lacks index.html '&amp;nbsp;'
lacks index.html '\u0026nbsp;'

# The archive: its own title and description (not the homepage's), an h1 and an intro, and posts under year headings
has archive/index.html '<title>Archive | Mick’s Micro Blog</title>'
has archive/index.html '<meta property="og:title" content="Archive | Mick’s Micro Blog">'
lacks photos/index.html '<title>Archive'
has archive/index.html '<meta name="description" content="Every post on Mick’s Micro Blog since 2025, by year: books, music, tech and more, in English and in French.">'
has archive/index.html '<meta property="og:description" content="Every post on Mick’s Micro Blog since 2025, by year: books, music, tech and more, in English and in French.">'
lacks archive/index.html 'A blog that should not show this line'
has archive/index.html '<h1 class="p-name">Archive</h1>'
has archive/index.html '<p class="archive-intro">All 15 posts since 2025, newest first, in English and in French. For a single topic, start from its category.</p>'
lacks archive/index.html '<h2 class="p-name">Archive</h2>'
has archive/index.html '<h2 id="2026">2026</h2>'
has archive/index.html '<h2 id="2025">2025</h2> <p class="h-entry"> <a href="https://example.org/last-year/" class="u-url">'
lacks archive/index.html 'Full Post List'

# One h1 per page: the page's own heading where it has one, the masthead otherwise
has index.html '<h1 class="site-name"><a class="site-title p-name u-url" href="/">'
has bare/index.html '<h1 class="site-name"><a class="site-title p-name u-url" href="/">'
has french-unlisted/index.html '<p class="site-name"><a class="site-title p-name u-url" href="/">'
has categories/books/index.html '<p class="site-name"><a class="site-title p-name u-url" href="/">'
has archive/index.html '<p class="site-name"><a class="site-title p-name u-url" href="/">'
has about/index.html '<h1 class="p-name">About</h1>'
has about/index.html '<p class="site-name"><a class="site-title p-name u-url" href="/">'
has photos/index.html '<h1 class="p-name">Photos</h1>'
has photos/index.html '<p class="site-name"><a class="site-title p-name u-url" href="/">'
