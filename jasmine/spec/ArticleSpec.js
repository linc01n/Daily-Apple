// Generated by CoffeeScript 1.4.0
(function() {

  describe("Article", function() {
    var article, title;
    article = void 0;
    title = void 0;
    beforeEach(function() {
      article = new window.Article();
      return title = "Test title";
    });
    return it("should be able to set title", function() {
      article.set_title(title);
      return expect(article.title).toEqual(title);
    });
  });

}).call(this);
