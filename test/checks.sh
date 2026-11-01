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
has french-unlisted/index.html '<h2 class="p-name">Un titre</h2>'

# Topics sidebar: home and topic pages only, with empty topics hidden
has index.html 'class="topics-sidebar"'
has index.html '<details class="topics-menu">'
has index.html 'Topics · Sujets'
has index.html '/categories/pop-culture/'
lacks index.html '/categories/places/'
lacks index.html '/categories/gaming/'
has categories/books/index.html 'class="topics-sidebar"'
lacks english-book/index.html 'class="topics-sidebar"'
lacks about/index.html 'class="topics-sidebar"'
lacks archive/index.html 'class="topics-sidebar"'

# Topic pages carry their emoji, language pages do not
has categories/books/index.html '<span aria-hidden="true">📚</span> Books</h2>'
has categories/french/index.html '<h2 class="p-name category-title">French</h2>'

# The masthead drops the site description, previews keep it
lacks index.html '<p class="description">'
has index.html 'name="description" content="A blog that should not show this line."'
has index.html 'src="https://example.org/avatar.jpg"'
