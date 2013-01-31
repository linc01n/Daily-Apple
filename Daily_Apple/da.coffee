class Article
   constructor: ->

   set_title: (@title) ->

   set_content: (@content) ->

   set_date: (@date) ->

   set_section: (@section) ->

   parse: (html) ->
      page = $(html)
      @set_title page.find("#articleContent h1").text()
      raw_content = page.find("#masterContent .ArticleContent_Inner")
      @set_content _.chain(raw_content).map(
                                            (paragraph) -> $(paragraph).find("p").removeAttr("class").prop("outerHTML")
                                             ).reduce(
                                                (memo, obj) -> memo + obj
                                             ).value()


root = exports ? this
root.Article = Article

