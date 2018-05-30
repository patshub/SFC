
  <?php global $post; $post_slug=$post->post_name; ?>
  <div id="page-header" class="special"
  <?php if(get_field('header_image')): ?>
    style="background-image:url('<?php the_field('header_image'); ?>');"
  <?php else: ?>
    style="background-image:url('<?php bloginfo('template_url'); ?>/assets/images/bg-main.png');"
    <?php endif; ?> >

    <div class="container">
      <div class="headline">
        <div class="liner top"></div>

        <?php if ( is_archive() ) {

          $post_type = get_post_type();
          if($post_type){
            $post_type_data = get_post_type_object( $post_type );
            $post_type_slug = $post_type_data->rewrite['slug'];
          } ?>
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
    <div class="dimmer"></div>
  </div>
