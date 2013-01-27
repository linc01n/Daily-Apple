describe "Article", ->
  article = title = content = date = section = null
  beforeEach ->
    article = new Article()
    title = "Test title"
    content = "Test content"
    date = new Date()
    section = "Test section"

  it "should be able to set title", ->
    article.set_title title
    expect(article.title).toEqual title

  it "should be able to set content", ->
    article.set_content content
    expect(article.content).toEqual content

  it "should be able to set date", ->
    article.set_date date
    expect(article.date).toEqual date

  it "should be able to set section", ->
    article.set_section section
    expect(article.section).toEqual section
