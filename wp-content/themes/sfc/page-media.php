<?php include 'header.php'; ?>
<?php include 'header-special.php'; ?>

  <section id="photo-albums" class="bg white">
    <div class="container">

        <h2 class="section-title">
          <span class="subtitle">Christ-Centered Memories</span>
          Photo Albums
        </h2>
        <?php
        $paged = get_query_var( 'paged' );
        $args = array(
          'posts_per_page' => 6,
          'post_type'   => 'photos',
          'paged' => $paged
        );
        $photos = new WP_Query( $args );
        if ( $photos->have_posts() ) { ?>
        <div class="columns col-max">
          <?php	while ( $photos->have_posts() ) { $photos->the_post(); ?>
          <div class="col-4">
            <div class="col">
              <?php if ( has_post_thumbnail() ) : ?>
                <a href="<?php the_permalink(); ?>">
                  <div class="img" style="background-image:url('<?php echo get_the_post_thumbnail_url(get_the_ID(),'full'); ?>');">
                    <div class="info">
                      <h4><?php the_title(); ?></h4>
                      <span class="post-date excerpt"><?php echo get_the_date('F j, Y'); ?></span>
                      <?php if(has_excerpt()){ ?>
                        <span class="excerpt"><?php the_excerpt(25); ?></span>
                      <?php } ?>
                    </div>
                  </div>
                </a>
              <?php endif; ?>
            </div>
          </div>
          <?php } wp_reset_postdata(); ?>
        </div>
        <?php echo paginate_links(array(
          'total' => $photos->max_num_pages
        ));
      } else { // no posts found
        } ?>
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

  <section id="video-playlist" class="bg grey">
    <div class="container">
      <h2 class="section-title">
        <span class="subtitle">Revisiting the Experience</span>
        Video Playlist
      </h2>

      <script>
        $(document).ready(function(){
          $('#video-playlist .video-slider').bxSlider({
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
                <iframe allowfullscreen width="100%" height="420px" src="https://www.youtube.com/embed/<?php if(get_field('youtube_code')): ?><?php the_field('youtube_code'); ?><?php endif; ?>"></iframe>
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

  <section class="bg white">
    <div class="container">
      <h2 class="section-title">
        <span class="subtitle">Praise and Worship</span>
        Music Playlist
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
