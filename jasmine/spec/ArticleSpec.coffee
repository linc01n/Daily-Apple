describe "Article", ->
  article = null
  title = null
  beforeEach ->
    article = new Article()
    title = "Test title"

  it "should be able to set title", ->
    article.set_title title
    expect(article.title).toEqual title
