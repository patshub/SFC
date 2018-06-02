<?php include 'header.php'; ?>
<?php include 'header-special.php'; ?>


  <section id="photo-albums" class="bg white">
    <div class="container">

      <script>
        $(document).ready(function(){
          $('.photo-album-collection').bxSlider({
            infiniteLoop: false,
            hideControlOnEnd: true,
            pager: false,
            nextText: "Next Album",
            prevText: "Previous Album",
            adaptiveHeight: true
          });
        });
      </script>

      <h2 class="media-title" style="margin-bottom:5px;">
        <a href="#video-playlist"><span class="other-media-title">Videos</span></a>
        Photos
        <a href="#music-playlist"><span class="other-media-title">Music</span></a>
      </h2>

        <?php
        $paged = get_query_var( 'paged' );
        $args = array(
          'posts_per_page' => 6,
          'post_type'   => 'photos'
        );
        $photos = new WP_Query( $args );
        if ( $photos->have_posts() ) { ?>
        <div class="photo-album-collection">
          <?php	while ( $photos->have_posts() ) { $photos->the_post(); ?>
            <div>
              <div class="photo-album-headline">
                <h3 class="section-title">
                  <?php the_title();?>
                </h3>
              </div>
              <div class="columns">
                <?php foreach ( get_gallery() as $attachment ) : ?>
                  <div class="col-4">
                    <div class="col">
                      <a class="swipebox" data-lightbox="post-gallery-<?php echo $post->ID ?>" href="<?php echo $attachment->large_url ?>" title="<?php the_title_attribute(); ?>"><div class="img" style="background-image:url('<?php echo $attachment->large_url ?>');"></div></a>
                    </div>
                  </div>
                <?php endforeach; ?>
              </div>
            </div>
          <?php } wp_reset_postdata(); ?>
        </div>
        <?php } else { } ?>
    </div>
  </section>
  <script>
    // Anchor page down to the search articles section whenever pager is used
    $( document ).ready(function() {
      $('a.page-numbers').each(function() {
        $(this).attr('href', $(this).attr('href').slice(0,-1) + '#photo-albums');
      });
    });
  </script>

  <section id="video-playlist" class="">
    <div class="container">
      <h2 class="media-title">
        <a href="#photo-albums"><span class="other-media-title">Photos</span></a>
        Videos
        <a href="#music-playlist"><span class="other-media-title">Music</span></a>
      </h2>

      <script>
        $(document).ready(function(){
          $('#video-playlist .video-slider').bxSlider({
            controls: false,
            infiniteLoop: false,
            hideControlOnEnd: true,
            buildPager: function(slideIndex){
              switch(slideIndex){
              <?php
              $args = array(
                'posts_per_page' => 10,
                'post_type'   => 'videos'
              );
              $videos0 = new WP_Query( $args );
              if ( $videos0->have_posts() ) { $count = 0; ?>
                <?php	while ( $videos0->have_posts() ) { $videos0->the_post(); ?>

                case <?php echo $count; ?>:
                  return '<div class="pager-item"><?php the_title(); ?><br/><span class="post-date excerpt"><?php echo get_the_date('F j, Y'); ?></span></div>';

                    <?php $count++; } wp_reset_postdata(); ?>
                  <?php } else { // no posts found
                } ?>
              }
            }
          });
        });
      </script>
        <div class="col-12">
          <?php
          $args = array(
            'posts_per_page' => 10,
            'post_type'   => 'videos'
          );
          $videos = new WP_Query( $args );
          if ( $videos->have_posts() ) { ?>
          <div class="video-slider">
            <?php	while ( $videos->have_posts() ) { $videos->the_post(); ?>
              <div>
                <iframe allowfullscreen width="100%" height="350px" src="https://www.youtube.com/embed/<?php if(get_field('youtube_code')): ?><?php the_field('youtube_code'); ?><?php endif; ?>"></iframe>
                <div class="info">
                  <h3><?php the_title(); ?></h3>
                  <span class="post-date excerpt"><?php echo get_the_date('F j, Y'); ?></span>
                </div>
              </div>
            <?php } wp_reset_postdata(); ?>
          </div>
          <?php } else { // no posts found
          } ?>
        </div>
    </div>
  </section>

  <section id="music-playlist">
    <div class="container">
      <h2 class="media-title">
        <a href="#photo-albums"><span class="other-media-title">Photos</span></a>
        Music
        <a href="#video-playlist"><span class="other-media-title">Videos</span></a>
      </h2>
        <div>
        <?php
        $args = array(
          'posts_per_page' => 100,
          'post_type'   => 'crd_sheet_music',
          'orderby' => 'title',
          'order' => 'ASC'
        );
        $music = new WP_Query( $args );
        $letter=' ';
        if ( $music->have_posts() ) { ?>
        <?php	while ( $music->have_posts() ) { $music->the_post(); ?>

        <?php $title = get_the_title();
        $initial=strtoupper(substr($title,0,1));
        if($initial!=$letter){ ?>
        </div>
        <div class="col-3">
          <?php echo '<h2 class="letter-category">'.$initial.'</h2>'; $letter=$initial;
        } ?>
          <span><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></span><br/>
        <?php } wp_reset_postdata(); ?>
        <?php } else { // no posts found
        } ?>
        <div>
    </div>
  </section>

<?php include 'footer.php'; ?>
