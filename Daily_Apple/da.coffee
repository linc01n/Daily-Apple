Article = new Class()
Article.implement {
   set_title: (title) ->
                  this.title = title
}

root = exports ? this
root.Article = Article
