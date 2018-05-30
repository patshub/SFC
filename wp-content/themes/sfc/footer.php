<footer>
    <div class="container">
        <div class="footer-col-logo">
          <div class="col">
            <a href="/sfc"><img class="logo" src="<?php bloginfo('template_url'); ?>/assets/images/logo-footer.svg"/></a>

          </div>
        </div>

        <div class="footer-col-menu">
          <div class="columns">
            <div class="col-4">
              <div class="col">
                <h3>Menu</h3>
                <?php wp_nav_menu( array('theme_location' => 'main-menu','container' => false ) ); ?>
              </div>
            </div>
            <div class="col-4">
              <div class="col">
                <h3>Contact Us</h3>
                <a href="tel:1234567890"><p>123.456.7890</p></a>
                <a href="mailto:info@sfcsouthbay.org"><p>info@sfcsouthbay.org</p></a>
                <br/>
                <h3>Follow Us</h3>
                <div class="social-media">
                  <a href="https://www.facebook.com/sfc.southbay" target="_blank"><img src="<?php bloginfo('template_url'); ?>/assets/images/icon-fb.svg"/></a>
                  <a href="#" target="_blank"><img src="<?php bloginfo('template_url'); ?>/assets/images/icon-twitter.svg"/></a>
                  <a href="https://www.instagram.com/sfcsouthbay" target="_blank"><img src="<?php bloginfo('template_url'); ?>/assets/images/icon-instagram.svg"/></a>
                </div>

              </div>
            </div>
            <div class="col-4">
              <div class="col">
                <h3>Verse of the Day</h3>
                <div class="verse-of-the-day">
                  <?php echo do_shortcode('[bibleverseoftheday_niv]'); ?>
                </div>

              </div>
            </div>
          </div>
        </div>
    </div>
  </footer>
  <div id="bottom-footer">
    <div class="container">
      <div class="mid-col">
         <p>© 2018 SFC SouthBay. All Rights Reserved.</p>
      </div>
    </div>
  </div>

</body>
