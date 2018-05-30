<?php if ( is_archive() ) { ?>
  <?php
  $post_type = get_post_type();
  if ( $post_type )
  {
      $post_type_data = get_post_type_object( $post_type );
      $post_type_slug = $post_type_data->rewrite['slug'];
  }
  ?>
  <div id="page-header">
    <div class="container">
      <div class="headline">
        <ul class="breadcrumbs">
          <li><a href="#">Home</a></li>
          <li><?php echo str_replace("Archives: ", "", get_the_archive_title()); ?></li>
        </ul>
        <h1 class="icon <?php echo $post_type_slug; ?>"><?php echo str_replace("Archives: ", "", get_the_archive_title()); ?></h1>
      </div>
    </div>
  </div>
<?php } else { ?>
  <?php global $post; $post_slug=$post->post_name; ?>
  <div id="page-header" class="special <?php echo $post_slug; ?>">
    <div class="container">
      <div class="headline">
        <div class="liner top"></div>
        <h1><span class="subtitle">Join the SFC Family</span><?php the_title(); ?></h1>
        <div class="liner bottom"></div>
      </div>
    </div>
    <div class="dimmer"></div>
  </div>

<? } ?>
