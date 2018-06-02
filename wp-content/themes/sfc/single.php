<?php include 'header.php'; ?>
<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
<?php
$post_type = get_post_type();
$media = false;

if(is_singular('crd_sheet_music') || is_singular('photos')){
  $media = true;
}
if($media){
  if($post_type){
    $post_type_data = get_post_type_object($post_type);
    $post_type_slug = $post_type_data->rewrite['slug'];
    $post_type = $post_type_slug;
  }
} ?>

<style>body{background-color: #f7f7f7;} section{margin:0;}</style>
<div id="node" class="<?php echo $post_type; ?>">

  <!-- NODE HEADER -->
  <div id="page-header">
    <div class="container">
      <div class="headline">
        <h1>

          <?php if($media){ ?>
            <ul class="breadcrumbs">
              <li class="subtitle"><a href="/sfc/media">MEDIA</a></li>
              <li class="subtitle"><?php echo $post_type; ?></li>
            </ul>
          <?php } else { ?>
            <span class="subtitle"><a href="/sfc/<?php echo $post_type; ?>"><?php echo $post_type; ?></a></span>
          <?php } ?>
          <?php the_title(); ?>
        </h1>
        <span class="post-date excerpt"><?php the_date(); ?></span>
      </div>
    </div>
    <!-- Background Header Montage -->
    <?php if(is_singular('photos')){ ?>
      <div class="columns">
        <?php foreach ( get_gallery() as $attachment ) : ?>
          <div class="col-4">
            <div class="col">
              <div class="img" style="background-image:url('<?php echo $attachment->large_url ?>');"></div>
            </div>
          </div>
        <?php endforeach; ?>
      </div>
    <?php }  ?>
    <div class="dimmer"></div>
  </div>
  <section>
    <div class="container">
      <!-- NODE CONTENT -->
      <div class="node-content">
        <div class="node-body">
          <?php
          // Photos Node
          if(is_singular('photos')){ ?>
            <div class="columns">
              <?php foreach ( get_gallery() as $attachment ) : ?>
                <div class="col-4">
                  <div class="col">
                    <a class="swipebox" data-lightbox="post-gallery-<?php echo $post->ID ?>" href="<?php echo $attachment->large_url ?>" title="<?php the_title_attribute(); ?>"><div class="img" style="background-image:url('<?php echo $attachment->large_url ?>');"></div></a>
                  </div>
                </div>
              <?php endforeach; ?>
            </div>
          <?php } else { // All Other Nodes ?>
            <?php if ( has_post_thumbnail() ) : ?>
              <div class="node-img" style="background-image:url('<?php echo get_the_post_thumbnail_url(get_the_ID(),'full'); ?>');"></div>
            <?php endif; ?>
            <?php the_content(); ?>
          <?php } ?>
        </div>
      </div>
    </div>
  </section>
  <div class="clear"></div>
</div>


<?php endwhile; else: ?>
<p>Sorry, no posts matched your criteria.</p>
<?php endif; ?>

<?php include 'footer.php'; ?>
