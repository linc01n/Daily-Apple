class Article
   constructor: () ->

   set_title: (title) ->
      @title = title

root = exports ? this
root.Article = Article
