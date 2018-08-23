import throttle from 'lodash.throttle';
import { colors } from '../utils';

function showHideNavbar() {
  const navbar = document.querySelector('.js-navbar-nav');
  const form = document.querySelector('.js-navbar-form');
  const brand = document.querySelector('.js-navbar-brand');

  if (navbar && form && brand) {
     const showHideOnScroll = () => {
        if (window.scrollY >= window.innerHeight) {
          navbar.classList.add('Navbar--fixed');
          form.classList.remove('hidden');
          brand.classList.remove('Navbar__brand--white');
        } else {
          navbar.classList.remove('Navbar--fixed');
          form.classList.add('hidden');
          brand.classList.add('Navbar__brand--white');
        }
    };
    if (window.location.pathname === '/') {
      window.addEventListener('scroll', throttle(showHideOnScroll, 100));
    } else {
      window.removeEventListener('scroll', throttle(showHideOnScroll, 100));
    }
  }
}

export default showHideNavbar;
