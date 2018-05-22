<?php include 'header.php'; ?>
<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>

<div id="node" class="photo-album">
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
          <div class="post-date">
            <?php the_date(); ?>
          </div>
          <div class="post-category">
            <?php the_category(); ?>
          </div>
          <div class="post-comments">
            <?php comments_number( 'No Comments', 'One Comments', '% Comments' ); ?>
          </div>
        </div>
      </div>
    </div>
  </section>
  <section id="main-content">
    <div class="content-box">
      <div id="columns">
        <?php foreach ( get_gallery() as $attachment ) : ?>
          <div class="col-3">
            <div class="col">
              <a class="swipebox" data-lightbox="post-gallery-<?php echo $post->ID ?>" href="<?php echo $attachment->large_url ?>" title="<?php the_title_attribute(); ?>"><div class="img" style="background-image:url('<?php echo $attachment->large_url ?>');"></div></a>
            </div>
          </div>
        <?php endforeach; ?>
      </div>
    </div>
  </section>
</div>

<?php endwhile; else: ?>
<p>Sorry, no posts matched your criteria.</p>
<?php endif; ?>

<?php include 'footer.php'; ?>
