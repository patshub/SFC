<?php include 'header.php'; ?>
<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
<div id="node">
  <section id="page-header">
    <div class="container">
    </div>
  </section>
  <section>
    <div class="container">
      <div class="col-8 push-up">
        <div class="col">
          <ul class="breadcrumbs white">
            <li><a href="/sfc">HOME</a></li>
            <li><?php the_title(); ?></li>
          </ul>
          <div id="content-box">
            <div class="headline">
              <h1><?php the_title(); ?></h1>
            </div>
            <?php if ( has_post_thumbnail() ) : ?>
              <img src="<?php echo get_the_post_thumbnail_url(get_the_ID(),'full'); ?>"/>
            <?php endif; ?>
            <?php the_content(); ?>
          </div>
        </div>
      </div>
      <div id="sidebar" class="col-4">
        <div class="col">

        </div>
      </div>
    </div>
  </section>
</div>
<?php endwhile; else: ?>
<p>Sorry, no posts matched your criteria.</p>
<?php endif; ?>

<?php include 'footer.php'; ?>
