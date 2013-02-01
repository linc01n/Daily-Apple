class Article
   constructor: ->

   set_title: (@title) ->

   set_content: (@content) ->

   set_date: (@date) ->

   set_section: (@section) ->

   set_view_count: (@view_count) ->

   parse: (html) ->
      page = $(html)
      @set_title page.find("#articleContent h1").text()
      @set_view_count page.find("#articleContent .view").text()
      raw_content = page.find("#masterContent .ArticleContent_Inner")
      @set_content _.chain(raw_content).map((paragraph) -> $(paragraph).children()).map((child) ->
                     $(child).removeAttr("class").parent().html((idx, html) -> html.replace(/^\s+|\s+$/g,"").replace(/>\s+</g, "><")).html()).reduce((memo, obj) ->
                     memo + obj).value()
      @set_date page.find(".LHSTitle_inner .SelectHdate").text()

root = exports ? this
root.Article = Article

