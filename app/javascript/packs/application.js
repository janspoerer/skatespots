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
