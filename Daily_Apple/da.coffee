class Article
   constructor: ->

   set_title: (@title) ->

   set_content: (@content) ->

   set_date: (@date) ->

   set_section: (@section) ->

   parse: (html) ->
      page = $(html)
      @set_title page.find("#articleContent h1").text()

root = exports ? this
root.Article = Article

