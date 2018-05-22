<?php include 'header.php'; ?>

<div id="media">
  <section id="page-header">
    <div class="container">
      <div class="headline">
        <ul class="breadcrumbs">
          <li><a href="/sfc">HOME</a></li>
          <li><a href="/sfc/media">MEDIA</a></li>
        </ul>
        <div class="has-icon">

          <h1>MEDIA</h1>
        </div>
        <div class="menu-icons">
          <a href="#"><img class="icon" src="<?php bloginfo('template_url'); ?>/assets/images/icon-picture-white.svg"/></a>
          <a href="#"><img class="icon" src="<?php bloginfo('template_url'); ?>/assets/images/icon-video-white.svg"/></a>
          <a href="#"><img class="icon" src="<?php bloginfo('template_url'); ?>/assets/images/icon-music-white.svg"/></a>
        </div>
      </div>
    </div>
  </section>
  <section class="photos">
    <div class="container">

        <h2 class="section-title">PHOTOS</h2>
        <?php
        $args = array(
          'posts_per_page' => 9,
          'post_type'   => 'photos'
        );
        $photos = new WP_Query( $args );
        if ( $photos->have_posts() ) { ?>
        <div id="columns">
          <?php	while ( $photos->have_posts() ) { $photos->the_post(); ?>
          <div class="col-3">
            <div class="col">
              <?php if ( has_post_thumbnail() ) : ?>
                <a href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>"><div class="img" style="background-image:url('<?php echo get_the_post_thumbnail_url(get_the_ID(),'full'); ?>');"><img class="icon-tag" src="<?php bloginfo('template_url'); ?>/assets/images/icon-camera-raw.svg"/></div></a>
              <?php endif; ?>
              <div class="info">
                <a href="#"><h3><?php the_title(); ?></h3></a>
                <?php if(has_excerpt()){ ?>
                  <span class="excerpt"><?php the_excerpt(25); ?></span>
                <?php } ?>
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

  <section class="videos">
    <div class="container">
        <h2 class="section-title">VIDEOS</h2>
        <?php
        $args = array(
          'posts_per_page' => 9,
          'post_type'   => 'videos'
        );
        $videos = new WP_Query( $args );
        if ( $videos->have_posts() ) { ?>
        <div id="columns">
          <?php	while ( $videos->have_posts() ) { $videos->the_post(); ?>
          <div class="col-6">
            <div class="col">
              <iframe allowfullscreen width="100%" height="320px" src="https://www.youtube.com/embed/<?php echo get('video_url'); ?>"></iframe>
              <div class="info">
                <h3><?php the_title(); ?></h3>
                <?php if(has_excerpt()){ ?>
                  <span class="excerpt"><?php the_excerpt(25); ?></span>
                <?php } ?>

                <?php
                if( '' !== get_post()->post_content ) {
                  the_content();
                }?>

              </div>
            </div>
          </div>
          <?php } wp_reset_postdata(); ?>
        </div>
        <?php } else { // no posts found
        } ?>
    </div>
  </section>

  <section class="songs">
    <div class="container">
      <h2 class="section-title">SONGS</h2>
        <div>
        <?php
        $args = array(
          'posts_per_page' => 100,
          'post_type'   => 'crd_sheet_music',
          'orderby' => 'title',
          'order' => 'ASC'
        );
        $music = new WP_Query( $args );
        $letter=' ';
        if ( $music->have_posts() ) { ?>
        <?php	while ( $music->have_posts() ) { $music->the_post(); ?>

        <?php $title = get_the_title();
        $initial=strtoupper(substr($title,0,1));
        if($initial!=$letter){ ?>
        </div>
        <div class="col-3">
          <?php echo '<h2 class="letter-category">'.$initial.'</h2>'; $letter=$initial;
        } ?>
          <span><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></span><br/>
        <?php } wp_reset_postdata(); ?>
        <?php } else { // no posts found
        } ?>
        <div>
    </div>
  </section>
</div>
<?php include 'footer.php'; ?>
