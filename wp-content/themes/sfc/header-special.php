  <?php global $post; $post_slug=$post->post_name; ?>
  <?php
  $post_type = get_post_type();
  if($post_type){
    $post_type_data = get_post_type_object( $post_type );
    $post_type_slug = $post_type_data->rewrite['slug'];
  } ?>
  <?php if ( is_archive() ) { ?>
      <div id="page-header" class="special archive-<?php echo $post_type_slug; ?>">

  <? } else { ?>
    <div id="page-header" class="special"
    <?php if(get_field('header_image')): ?>
      style="background-image:url('<?php the_field('header_image'); ?>');"
    <?php else: ?>
      style="background-image:url('<?php bloginfo('template_url'); ?>/assets/images/bg-main.png');"
    <?php endif; ?> >
  <?php } ?>

    <div class="container">
      <div class="headline">
        <div class="liner top"></div>
        <?php if (is_archive()) { ?>
          <h1><span class="subtitle"><?php the_archive_description(); ?></span><?php echo str_replace("Archives: ", "", get_the_archive_title()); ?></h1>
        <? } else{ ?>
          <h1>
            <span class="subtitle">
              <?php if(get_field('subtitle')): ?>
                <?php the_field('subtitle'); ?>
              <?php else: ?>
                <style>#page-header.special .subtitle{margin-bottom:10px;}</style>
              <?php endif; ?>
            </span><?php the_title(); ?>
          </h1>
        <?php } ?>

        <div class="liner bottom"></div>
      </div>
    </div>
    <?php if($post_slug == 'media') { ?>
      <video autoplay loop class="bg-video" width="100%" height="420px">
        <source src="<?php bloginfo('template_url'); ?>/assets/videos/touch-the-sky.mp4"/>
      </video>
      <style>#page-header{background-image: none!important;}#page-header .dimmer{opacity: .3;}</style>
    <?php } ?>
    <div class="dimmer"></div>
  </div>
