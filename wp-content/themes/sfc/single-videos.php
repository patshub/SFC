<?php include 'header.php'; ?>
<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
<div id="node" class="articles">
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
      <?php if ( has_post_thumbnail() ) : ?>
        <img src="<?php echo get_the_post_thumbnail_url(get_the_ID(),'full'); ?>"/>
      <?php endif; ?>


      <iframe allowfullscreen width="100%" height="450px" src="https://www.youtube.com/embed/<?php echo get('video_url'); ?>"></iframe>

      <?php echo get('video_file'); ?>
      <?php the_content(); ?>
    </div>
  </section>
</div>
<?php endwhile; else: ?>
<p>Sorry, no posts matched your criteria.</p>
<?php endif; ?>

<?php include 'footer.php'; ?>
