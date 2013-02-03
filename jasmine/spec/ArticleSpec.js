// Generated by CoffeeScript 1.4.0
(function() {

  describe("AppleDaily", function() {
    var article, content, date, html, section, title, view_count;
    article = title = content = date = section = view_count = html = null;
    beforeEach(function() {
      article = new AppleDaily();
      title = "Test title";
      content = "<p>Test Content 1</p><p>Test Content 2</p><h2>Sub Title</h2><p>Test Content 3</p>";
      date = "2013年01月31日";
      section = "Test section";
      view_count = "1,234";
      return html = "<html>\n  <head></head>\n  <body>\n    <div class=\"container\">\n      <div class=\"LHS\">\n        <div class=\"LHSTitle page_news\">\n          <div class=\"LHSTitle_inner\">\n            <div class=\"SelectHdate\">2013年01月31日</div>\n          </div>\n        </div>\n        <div id=\"articleContent\" class=\"LHSContent\">\n          <div class=\"LHSBorderBox\">\n            <table class=\"LinkTable\">\n              <tbody>\n                <tr>\n                  <td>\n                    <h1>Test title</h1>\n                  </td>\n                  <td>\n                    <div class=\"view\">1,234</div>\n                  </td>\n                </tr>\n              </tbody>\n            </table>\n          </div>\n          <div id=\"masterContent\" class=\"fontSize2\">\n            <div class=\"ArticleContent_Outer\">\n              <div class=\"ArticleContent_Inner\">\n                <p class=\"ArticleIntro\">Test Content 1</p>\n              </div>\n            </div>\n            <div class=\"ArticleContent_Outer\">\n              <div class=\"ArticleContent_Inner\">\n                <p class=\"ArticleIntro\">Test Content 2</p>\n              </div>\n            </div>\n            <div class=\"ArticleContent_Outer\">\n              <div class=\"ArticleContent_Inner\">\n                <h2>Sub Title</h2>\n                <p class=\"ArticleIntro\">Test Content 3</p>\n              </div>\n            </div>\n          </div>\n        </div>\n      </div>\n    </div>\n  </body>\n</html>";
    });
    it("should be able to set title", function() {
      article.set_title(title);
      return expect(article.title).toEqual(title);
    });
    it("should be able to set content", function() {
      article.set_content(content);
      return expect(article.content).toEqual(content);
    });
    it("should be able to set date", function() {
      article.set_date(date);
      return expect(article.date).toEqual(date);
    });
    it("should be able to set section", function() {
      article.set_section(section);
      return expect(article.section).toEqual(section);
    });
    it("should be able to set view count", function() {
      article.set_view_count(view_count);
      return expect(article.view_count).toEqual(view_count);
    });
    return describe("Parser", function() {
      beforeEach(function() {
        return article.parse(html);
      });
      it("should set title", function() {
        return expect(article.title).toEqual(title);
      });
      it("should set content", function() {
        return expect(article.content).toEqual(content);
      });
      it("should set view count", function() {
        return expect(article.view_count).toEqual(view_count);
      });
      return it("should set date", function() {
        return expect(article.date).toEqual(date);
      });
    });
  });

}).call(this);
