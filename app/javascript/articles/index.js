'use strict';

{
  window.onload = function() {
    const article_content = document.querySelectorAll('.article__content');

    article_content.forEach(content => {
      if (content !== null) {
        content.textContent = omittedContent(content.textContent);
      }
    })

    function omittedContent(string) {
      const MAX_LENGTH = 200;

      if (string.length > MAX_LENGTH) {
        return string.substr(0, MAX_LENGTH) + '...';
      }

      return string;
    }
  };
}