'use strict';

{
  window.onload = function() {
    const scrollAnimationElement = document.querySelectorAll('.scroll_animation');

    function scrollAnimation() {

      for (let i = 0; i < scrollAnimationElement.length; i++) {
        const triggerMargin = 300;

        if(window.innerHeight > scrollAnimationElement[i].getBoundingClientRect().top + triggerMargin) {
          scrollAnimationElement[i].classList.add('show');
        }
      }
    }

    window.addEventListener('scroll', scrollAnimation);
  };
}