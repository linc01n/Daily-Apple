class Article
   constructor: ->

   set_title: (@title) ->
      @title = $.trim(@title)

   set_content: (@content) ->
      @content = $.trim(@content)

   set_date: (@date) ->
      @date = $.trim(@date)

   set_section: (@section) ->
      @section = $.trim(@section)

   set_view_count: (@view_count) ->
      @view_count = $.trim(@view_count)


class AppleDaily extends Article
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
root.AppleDaily = AppleDaily

