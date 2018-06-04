<?php include 'header.php'; ?>
<?php include 'header-special.php'; ?>
<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
<section id="prayer-warriors-asseble" class="bg lightblue-img">
  <div class="container">
    <div class="mid-col">
      <img src="<?php bloginfo('template_url'); ?>/assets/images/logo-prayerwarriors.svg" />
      <h2>Prayer Warriors, Assemble!</h2>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras purus augue, auctor sed eros vel, sagittis. Consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
      <a class="btn white hover-white" href="#prayer-form">Make a Prayer Intention</a>
    </div>
  </div>
</section>

<section id="prayers-list" class="bg white">
  <div class="container">
    <div class="columns">
      <h2 class="section-title">Intentions</h2>

      <div class="col-6">
        <div class="col">
          <?php
          $args = array(
            'posts_per_page' => 4,
            'category__not_in' => array(13)
          );
          $articles = new WP_Query( $args );
          if ( $articles->have_posts() ) { ?>
          <div class="columns">
            <?php	while ( $articles->have_posts() ) { $articles->the_post(); ?>

                <div class="prayer-item">
                  <h3><?php the_title(); ?></h3>
                  <?php echo the_content(); ?>
                  <div class="white-fade"></div>
                </div>

            <?php } wp_reset_postdata(); ?>
          </div>
          <?php } else { // no posts found
          } ?>
        </div>
      </div>

      <div class="col-6">
        <div class="col">
          <?php
          $args = array(
            'posts_per_page' => 4,
            'offset' => 4,
            'category__not_in' => array(13)
          );
          $articles = new WP_Query( $args );
          if ( $articles->have_posts() ) { ?>
          <div class="columns">
            <?php	while ( $articles->have_posts() ) { $articles->the_post(); ?>

                <div class="prayer-item">
                  <h3><?php the_title(); ?></h3>
                  <?php echo the_content(); ?>
                  <div class="white-fade"></div>
                </div>

            <?php } wp_reset_postdata(); ?>
          </div>
          <?php } else { // no posts found
          } ?>
        </div>
      </div>

    </div>
  </div>
</section>

<section id="prayer-form" class="bg blue-img dark">
  <div class="container">
    <div class="mid-col">
        <h2>Make a Prayer Intention</h2>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras purus augue, auctor sed eros vel, sagittis. Consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elit.</p>

        <?php echo do_shortcode('[user-submitted-posts]'); ?>

        <script>
        $( document ).ready(function() {
          $('#user-submitted-title').attr('placeholder','Your Name');
          $('#user-submitted-content').attr('placeholder','Your Prayer Intentions');
        });
        </script>
    </div>
  </div>
</section>
<?php endwhile; else: ?>
<p>Sorry, no posts matched your criteria.</p>
<?php endif; ?>

<?php include 'footer.php'; ?>
