describe "Article", ->
  article = undefined
  title = undefined
  beforeEach ->
    article = new Article()
    title = "Test title"

  it "should be able to set title", ->
    article.set_title title
    expect(article.title).toEqual title
