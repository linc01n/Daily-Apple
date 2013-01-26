describe "Article", ->
  article = null
  title = null
  content = null
  beforeEach ->
    article = new Article()
    title = "Test title"
    content = "Test content"

  it "should be able to set title", ->
    article.set_title title
    expect(article.title).toEqual title

  it "should be able to set content", ->
    article.set_content content
    expect(article.content).toEqual content
