class Article
   constructor: ->

   set_title: (@title) ->

   set_content: (@content) ->

root = exports ? this
root.Article = Article
