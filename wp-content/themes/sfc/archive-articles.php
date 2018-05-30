<?php include 'header.php'; ?>
<?php include 'header-special.php'; ?>

  <section class="bg blue-img">
    <div class="container">
      <h2 class="align-center"><strong>Featured Articles</strong></h2>
      <br/>
      <?php
      $args = array(
        'posts_per_page' => 3,
        'post_type'   => 'articles',
        'category_name' => 'Featured'
      );
      $articles = new WP_Query( $args );
      if ( $articles->have_posts() ) { ?>
      <div class="columns articles">
        <?php	while ( $articles->have_posts() ) { $articles->the_post(); ?>
        <div class="col-4">
          <div class="col">
            <?php if ( has_post_thumbnail() ) : ?>
              <a href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>"><div class="img" style="background-image:url('<?php echo get_the_post_thumbnail_url(get_the_ID(),'full'); ?>');"></div></a>
            <?php endif; ?>

            <div class="info">
              <a href="<?php the_permalink(); ?>"><h4><?php the_title(); ?></h4></a>
              <span class="post-date excerpt"><?php echo get_the_date('F j, Y'); ?></span>
              <div class="excerpt"><?php echo the_excerpt(25); ?></div>
              <a href="<?php the_permalink(); ?>" class="btn white hover-white">Read Article</a>
            </div>
          </div>
        </div>
        <?php } wp_reset_postdata(); ?>
      </div>
      <?php } else { // no posts found
      } ?>
    </div>
  </section>


  <section class="bg white">
    <div class="container">
      <h3><strong>Search for Articles</strong></h3>
      <form method="get" class="filter">
        <input type="text" name="search" placeholder="Search Keywords"/>
        <input type="submit" value="Apply" />
      </form>
      <?php

      $keyword = "";

      if($_GET["search"]){
        $keyword = $_GET["search"];
      }

      $args2 = array(
        'posts_per_page' => 6,
        'post_type'   => 'articles',
        's' => $keyword,
        'category__not_in' => array(8)

      );
      $articles2 = new WP_Query( $args2 );
      if ( $articles2->have_posts() ) { ?>

      <div class="columns articles">
        <?php	while ( $articles2->have_posts() ) { $articles2->the_post(); ?>
        <div class="col-6">
          <div class="col">
            <div class="article-item">
              <?php if ( has_post_thumbnail() ) : ?>
                <a href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>"><div class="article-img" style="background-image:url('<?php echo get_the_post_thumbnail_url(get_the_ID(),'full'); ?>');"></div></a>
              <?php endif; ?>
              <div class="article-info">
                <a href="<?php the_permalink(); ?>"><h4><?php the_title(); ?></h4></a>
                <span class="post-date excerpt"><?php echo get_the_date('F j, Y'); ?></span>
                <div class="excerpt"><?php echo the_excerpt(25); ?></div>
                <a href="<?php the_permalink(); ?>" class="btn secondary">Read Article</a>
              </div>
            </div>
          </div>
        </div>
        <?php } wp_reset_postdata(); ?>
      </div>
    <?php } else { // no posts found
    } ?>
    </div>
  </section>

<?php include 'footer.php'; ?>
