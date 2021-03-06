import rater from 'rater-js';

var myRating = rater( {
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
    rateCallback: function rateCallback(rating, done) {
      this.setRating(rating);
      const input = document.getElementById('review_rating')
      input.value = rating
      done();
    }
});



