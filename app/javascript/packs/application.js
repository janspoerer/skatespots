import "bootstrap";
import "lazysizes/lazysizes";
import "lazysizes/plugins/blur-up/ls.blur-up";

import { cityAutocomplete } from '../components/nav_search';
import showHideNavbar from '../components/navbar';
import rater from '../components/rating';

document.addEventListener('DOMContentLoaded', () => {
  showHideNavbar();
  cityAutocomplete();
  rater();
});

var myRating = raterJs( {
    // shows a rating tooltip
    showToolTip: true,
    // the number of stars
    max: 5,
    // star size
    starSize: 30,
    // text to show when disabled.
    disableText: 'Thank you for your vote!',
    // Text to show when hover over stars.
    ratingText: '{rating}/{maxRating}',
    // displayed while user is rating but done not called yet.
    isBusyText: null,
    // is readonly?
    readOnly: false,

    element:document.querySelector("#rater"),
    rateCallback:function rateCallback(rating, done) {
      this.setRating();
      done();
    }
  });
