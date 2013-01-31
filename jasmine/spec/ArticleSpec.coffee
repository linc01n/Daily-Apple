describe "Article", ->
  article = title = content = date = section = view_count = html = null
  beforeEach ->
    article = new Article()
    title = "Test title"
    content = "<p>Test Content 1</p><p>Test Content 2</p><p>Test Content 3</p>"
    date = new Date()
    section = "Test section"
    view_count = "1,234"
    html = """
    <html>
      <head></head>
      <body>
        <div class="container">
          <div class="LHS">
            <div id="articleContent" class="LHSContent">
              <div class="LHSBorderBox">
                <table class="LinkTable">
                  <tbody>
                    <tr>
                      <td>
                        <h1>Test title</h1>
                      </td>
                      <td>
                        <div class="view">1,234</div>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </div>
              <div id="masterContent" class="fontSize2">
                <div class="ArticleContent_Outer">
                  <div class="ArticleContent_Inner">
                    <p class="ArticleIntro">Test Content 1</p>
                  </div>
                </div>
                <div class="ArticleContent_Outer">
                  <div class="ArticleContent_Inner">
                    <p class="ArticleIntro">Test Content 2</p>
                  </div>
                </div>
                <div class="ArticleContent_Outer">
                  <div class="ArticleContent_Inner">
                    <h2>Sub Title</h2>
                    <p class="ArticleIntro">Test Content 3</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </body>
    </html>
    """

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

  it "should be able to set view count", ->
    article.set_view_count view_count
    expect(article.view_count).toEqual view_count

  it "should parse webpage to set all attr", ->
    article.parse html
    expect(article.title).toEqual title
    expect(article.section).toEqual section
    expect(article.content).toEqual content
    expect(article.view_count).toEqual view_count
    expect(article.date).toEqual date
