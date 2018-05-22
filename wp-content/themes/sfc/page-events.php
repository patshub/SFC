<?php include 'header.php'; ?>
<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
<section id="page-header">
  <div class="container">
    <div class="headline">
      <ul class="breadcrumbs">
        <li><a href="/sfc">HOME</a></li>
        <li><a href="/sfc/media"><?php the_title(); ?></a></li>
      </ul>
      <div class="has-icon">
        <img class="icon" src="<?php bloginfo('template_url'); ?>/assets/images/icon-media-dim.svg"/>
        <h1><?php the_title(); ?></h1>
      </div>
    </div>
  </div>
</section>
<section id="events">
  <div class="container">
    <?php the_content(); ?>
  </div>
</section>
<?php endwhile; else: ?>
<p>Sorry, no posts matched your criteria.</p>
<?php endif; ?>
<?php include 'footer.php'; ?>
