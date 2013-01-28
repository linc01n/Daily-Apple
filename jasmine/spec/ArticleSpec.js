// Generated by CoffeeScript 1.4.0
(function() {

  describe("Article", function() {
    var article, content, date, html, section, title;
    article = title = content = date = section = html = null;
    beforeEach(function() {
      article = new Article();
      title = "Test title";
      content = "Test content";
      date = new Date();
      section = "Test section";
      return html = "";
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
    return it("should parse webpage to set all attr", function() {
      article.parse(html);
      expect(article.title).toEqual(title);
      expect(article.section).toEqual(section);
      expect(article.content).toEqual(content);
      return expect(article.date).toEqual(date);
    });
  });

}).call(this);
