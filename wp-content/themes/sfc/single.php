<?php include 'header.php'; ?>
<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>

<?php if(get_post_type( get_the_ID(get_the_ID())) == 'crd_sheet_music' ) { ?>
  <div id="node" class="music">
    <section id="page-header">
      <div class="container">
        <div class="headline">
          <ul class="breadcrumbs">
            <li><a href="/sfc">HOME</a></li>
            <li><a href="/sfc/media">MEDIA</a></li>
            <li><?php the_title(); ?></li>
          </ul>
          <h1><?php the_title(); ?></h1>
          <div class="meta">
            <div class="post-info">
              <strong>Artist/Band</strong> <br/><?php echo get('song_artist_band'); ?>
            </div>
            <div class="post-info">
              <strong>Capo</strong> <br/><?php echo get('capo'); ?>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section id="main-content">
      <div class="content-box">
        <?php if ( has_post_thumbnail() ) : ?>
          <img src="<?php echo get_the_post_thumbnail_url(get_the_ID(),'full'); ?>"/>
        <?php endif; ?>
        <?php the_content(); ?>
      </div>
    </section>
  </div>
<?php } ?>

<?php endwhile; else: ?>
<p>Sorry, no posts matched your criteria.</p>
<?php endif; ?>
<?php include 'footer.php'; ?>
