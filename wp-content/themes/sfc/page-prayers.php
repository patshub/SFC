<?php include 'header.php'; ?>
<?php include 'header-special.php'; ?>
<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
<section id="prayer-warriors-asseble" class="bg lightblue-img">
  <div class="container">
    <div class="mid-col">
      <img src="<?php bloginfo('template_url'); ?>/assets/images/logo-prayerwarriors.svg" />
      <h2>Prayer Warriors, Assemble!</h2>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras purus augue, auctor sed eros vel, sagittis. Consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
      <a class="btn white hover-white" href="#">Make a Prayer Intention</a>
    </div>
  </div>
</section>

<section class="bg white">
  <div class="container">
    <div class="columns">
      <h2>Prayers Intentions</h2>
      <br/>
      <div class="col-6">
        <div class="col">
          <div class="prayer-item">
            <h4>James Dawson</h4>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras purus augue, auctor sed eros vel, sagittis. Consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
          </div>
        </div>
      </div>
      <div class="col-6">
        <div class="col">
          <div class="prayer-item">
            <h4>James Dawson</h4>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras purus augue, auctor sed eros vel, sagittis. Consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
          </div>
        </div>
      </div>
      <div class="col-6">
        <div class="col">
          <div class="prayer-item">
            <h4>James Dawson</h4>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras purus augue, auctor sed eros vel, sagittis. Consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
          </div>
        </div>
      </div>
      <div class="col-6">
        <div class="col">
          <div class="prayer-item">
            <h4>James Dawson</h4>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras purus augue, auctor sed eros vel, sagittis. Consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
          </div>
        </div>
      </div>
      <div class="col-6">
        <div class="col">
          <div class="prayer-item">
            <h4>James Dawson</h4>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras purus augue, auctor sed eros vel, sagittis. Consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
          </div>
        </div>
      </div>
      <div class="col-6">
        <div class="col">
          <div class="prayer-item">
            <h4>James Dawson</h4>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras purus augue, auctor sed eros vel, sagittis. Consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
          </div>
        </div>
      </div>
      <div class="col-6">
        <div class="col">
          <div class="prayer-item">
            <h4>James Dawson</h4>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras purus augue, auctor sed eros vel, sagittis. Consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
          </div>
        </div>
      </div>
      <div class="col-6">
        <div class="col">
          <div class="prayer-item">
            <h4>James Dawson</h4>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras purus augue, auctor sed eros vel, sagittis. Consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<section class="bg blue-img">
  <div class="container">
    <div class="mid-col">
        <h2>Make a Prayer Intention</h2>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras purus augue, auctor sed eros vel, sagittis. Consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elit.</p>


    </div>
  </div>
</section>
<?php endwhile; else: ?>
<p>Sorry, no posts matched your criteria.</p>
<?php endif; ?>

<?php include 'footer.php'; ?>
