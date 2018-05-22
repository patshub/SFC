<?php include 'header.php'; ?>
<div id="news">
  <section id="page-header">
    <div class="container">
      <div class="headline">
        <ul class="breadcrumbs">
          <li><a href="/sfc">HOME</a></li>
          <li>LATEST ARTICLES</li>
        </ul>
        <div class="has-icon">
          <!-- <img class="icon" src="<?php bloginfo('template_url'); ?>/assets/images/icon-news-white.svg"/> -->
          <h1>LATEST ARTICLES</h1>
        </div>
      </div>
    </div>
  </section>

  <section>
    <div class="container">
      <div class="filter">
        <form>
          <input type="text" placeholder="Search for Articles"/>
          <select>
            <option>Sort by Post Date</option>
          </select>
          <input type="submit" value="APPLY"/>
        </form>
      </div>
      <?php
      $args = array(
        'posts_per_page' => 9,
        'post_type'   => 'articles'
      );
      $articles = new WP_Query( $args );
      if ( $articles->have_posts() ) { ?>
      <div id="columns">
        <?php	while ( $articles->have_posts() ) { $articles->the_post(); ?>
        <div class="col-3">
          <div class="col">
            <?php if ( has_post_thumbnail() ) : ?>
              <a href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>"><div class="img" style="background-image:url('<?php echo get_the_post_thumbnail_url(get_the_ID(),'full'); ?>');"></div></a>
            <?php endif; ?>

            <div class="info">
              <a href="#"><h3><?php the_title(); ?></h3></a>
              <p class="meta"><?php the_date(); ?></p>
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
