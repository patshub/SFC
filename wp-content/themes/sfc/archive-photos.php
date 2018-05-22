<?php include 'header.php'; ?>
<div id="subcategory">
  <section id="page-header">
    <div class="container">
      <a href="/sfc/media">
        <div class="headline">
          <div class="has-icon">
            <img class="icon" src="<?php bloginfo('template_url'); ?>/assets/images/icon-media-white.svg"/>
            <h1>MEDIA</h1>
          </div>
        </div>
      </a>
    </div>
  </section>
  <section id="photos">
    <div class="container">
      <!-- <div class="filter">
        <form>
          <input type="text" placeholder="Search for Articles"/>
          <select>
            <option>Sort by Post Date</option>
          </select>
          <input type="submit" value="APPLY"/>
        </form>
      </div> -->
      <div class="headline inverse">
        <ul class="breadcrumbs">
          <li><a href="/sfc">HOME</a></li>
          <li><a href="/sfc/media">MEDIA</a></li>
          <li>PHOTOS</li>
        </ul>
        <h1>PHOTOS</h1>
      </div>

      <?php
      $args = array(
        'posts_per_page' => 9,
        'post_type'   => 'photos'
      );
      $photos = new WP_Query( $args );
      if ( $photos->have_posts() ) { ?>
      <div id="columns">
        <?php	while ( $photos->have_posts() ) { $photos->the_post(); ?>
        <div class="col-4">
          <div class="col">
            <?php if ( has_post_thumbnail() ) : ?>
              <a href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>"><div class="img" style="background-image:url('<?php echo get_the_post_thumbnail_url(get_the_ID(),'full'); ?>');"><img class="icon-tag" src="<?php bloginfo('template_url'); ?>/assets/images/icon-camera-raw.svg"/></div></a>
            <?php endif; ?>
            <div class="info">
              <a href="#"><h3><?php the_title(); ?></h3></a>
              <span class="excerpt"><?php the_excerpt(25); ?></span>
              <a href="<?php the_permalink(); ?>" class="btn">READ MORE</a>
            </div>
          </div>
        </div>
        <?php } wp_reset_postdata(); ?>
      </div>
      <?php } else { // no posts found
      } ?>


    </div>
  </section>

</div>
<?php include 'footer.php'; ?>
