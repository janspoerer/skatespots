import "bootstrap";
import "lazysizes/lazysizes";
import "lazysizes/plugins/blur-up/ls.blur-up";

import { cityAutocomplete } from '../components/nav_search';
import showHideNavbar from '../components/navbar';
import changeTabs from '../components/navbar';

document.addEventListener('DOMContentLoaded', (event) => {
  showHideNavbar();
  cityAutocomplete();
  changeTabs()
});


