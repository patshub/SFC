<?php include 'header.php'; ?>
<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
<style>body{background-color: #f7f7f7;} section{margin:0;}</style>
<div id="page-header" class="node">
  <div class="headline">
    <h1>
      <span class="subtitle">ARTICLES</span>
      <?php the_title(); ?>
    </h1>
    <span class="post-date excerpt"><?php the_date(); ?></span>
  </div>
  <div class="dimmer"></div>
</div>
<section>
  <div class="container">
    <div class="node-content">
      <div class="node-body">
        <?php if ( has_post_thumbnail() ) : ?>
          <div class="node-img" style="background-image:url('<?php echo get_the_post_thumbnail_url(get_the_ID(),'full'); ?>');"></div>
        <?php endif; ?>
        <?php the_content(); ?>
      </div>
    </div>
  </div>
</section>
<div class="clear"></div>
<?php endwhile; else: ?>
<p>Sorry, no posts matched your criteria.</p>
<?php endif; ?>
<?php include 'footer.php'; ?>
