// Generated by CoffeeScript 1.4.0
(function() {
  var Article, root;

  Article = (function() {

    function Article() {}

    Article.prototype.set_title = function(title) {
      this.title = title;
    };

    Article.prototype.set_content = function(content) {
      this.content = content;
    };

    Article.prototype.set_date = function(date) {
      this.date = date;
    };

    Article.prototype.set_section = function(section) {
      this.section = section;
    };

    return Article;

  })();

  root = typeof exports !== "undefined" && exports !== null ? exports : this;

  root.Article = Article;

}).call(this);
